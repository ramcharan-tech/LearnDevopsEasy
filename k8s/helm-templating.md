1. {{ define "quote" }}{{ quote . }}{{ end }}: This line is defining a new named template called “quote”. The define keyword is used to create reusable snippets of code in Helm templates. Inside this template, **it’s using the quote function to quote its input**. The **. represents the input** to the template.
2. The output of the template and include lines are different because of the order in which the operations are applied. With template, the string is indented first and then quoted, resulting in "  hello". With include, the string is quoted first and then the quoted string is indented, resulting in   "hello"
  {{ define "quote" }}{{ quote . }}{{ end }}

   {{/* "hello" is indented, then "  hello" is quoted */}}
   Template: {{ template "quote" "hello" | indent 2 }}

   {{/* "hello" is quoted, then '"hello"' is indented */}}
   Include:  {{ include "quote" "hello" | indent 2 }}

   Template: "  hello"
   Include:    "hello"

3.  $ means root object and can be first letter to create a variable {{- $fullName := include "chart.fullname" . -}}. And . (dot) means current context.
4.  hyphens in helm templating are used to control whitespaces (basically removing whitespace and new lines)
5.  spaces between double moustache symbol are just for readability purpose
6.  Ref: https://helm.sh/docs/chart_template_guide/variables/ 
    https://jsonformatter.org/yaml-validator