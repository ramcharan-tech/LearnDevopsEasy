1. Use multi-stage builds

Why: Each FROM creates a new stage. Only artifacts explicitly copied into the final stage end up in the shipped image. The SDK (700 MB+) is
discarded; only the ASP.NET runtime (~200 MB) ships.
Rule: Build stage installs tools and compiles. Runtime stage is minimal and receives only the compiled output.

2. Never store secrets or cache in image layers

Why: Every RUN creates a layer. Even if you delete a file in a later RUN, the data persists in the earlier layer and is recoverable with docker
history. Package manager caches (NuGet, apt, pip, npm) bloat every image unnecessarily.
Rule: Use --mount=type=cache (BuildKit) for package caches. Use --mount=type=secret for credentials at build time. Never ENV SECRET=value.

3. Pin base image versions

Why: FROM dotnet/aspnet:8.0 resolves to a different digest every few weeks as Microsoft patches it. An upstream change can silently break your
build or introduce a regression.
Rule: Pin to at least a variant tag (8.0-bookworm-slim). For air-gapped or highly regulated environments, pin to a full digest: FROM
mcr.microsoft.com/dotnet/aspnet@sha256:<digest>.

4. Run as a non-root user

Why: If a container is compromised and escapes via a kernel vulnerability, a root-in-container process has root-on-host privileges. A non-root UID
limits blast radius.
Rule: Create a dedicated user with no login shell and no home directory (adduser --disabled-password --no-create-home app), switch with USER app
before ENTRYPOINT. Ensure COPY uses --chown=app:app.

5. Keep layers small and ordered by change frequency

Why: Docker caches layers from top to bottom. A change to any layer invalidates all layers below it. COPY . . before dotnet restore means every
source code change re-downloads all packages.
Rule: Copy only what's needed for the next RUN step first (e.g., *.csproj → restore → COPY . . → publish). Put infrequently-changing steps (OS
packages, tool installs) near the top. **Order layers from least-frequently-changing to most-frequently-changing.**

6. Use a .dockerignore file

Why: Without .dockerignore, COPY . . sends the entire build context (including bin/, obj/, .git/, editor files) to the Docker daemon. This
inflates build context size and can accidentally copy sensitive files.
Rule: Always have .dockerignore. At minimum exclude: bin/, obj/, .git/, *.user, .vs/, any .env files.

7. Prefer COPY over ADD

Why: ADD has implicit magic — it auto-extracts tarballs and can fetch remote URLs. This makes builds non-deterministic and harder to audit.
Rule: Use COPY for all local file copying. Only use ADD when you explicitly need tarball extraction and document why.

8. Use HEALTHCHECK for non-k8s runtimes

Why: k8s probes only work in k8s. When running with docker run or docker compose, there are no probes. HEALTHCHECK makes docker ps and docker
inspect report real health status and enables depends_on: condition: service_healthy in Compose.
Rule: Add HEALTHCHECK pointing at your liveness endpoint with a short timeout and reasonable retries.

9. Minimise the attack surface — use slim or distroless base images

Why: Every package installed in the base image is a potential CVE. aspnet:8.0 is already trimmed, but aspnet:8.0-bookworm-slim is smaller still.
Distroless images (no shell, no package manager) reduce the attack surface to near zero.
Rule: Prefer -slim variants. For production hardening, evaluate mcr.microsoft.com/dotnet/runtime-deps with a self-contained publish to go fully
distroless.

10. Set explicit EXPOSE and environment defaults

Why: EXPOSE is documentation — it tells operators (and tools like Compose and k8s) what port the container expects traffic on. Without it, port
mappings must be guessed. Environment variable defaults (ENV ASPNETCORE_URLS=http://+:8080) ensure the app works correctly with docker run without
extra -e flags.
Rule: Always EXPOSE every port the process listens on. Set safe, correct ENV defaults in the image so the container is runnable without
configuration.

---
Verification

1. docker build -t demo:latest . — should succeed with BuildKit output showing CACHED on restore after first build
2. docker run -p 8080:8080 demo:latest — app starts, http://localhost:8080/healthz/live returns 200
3. docker inspect demo:latest | grep -A5 Healthcheck — verify HEALTHCHECK is present
4. docker run demo:latest whoami — should return app, not root
5. docker history demo:latest — runtime stage should show no SDK, no NuGet cache layers


