# powerful Utilities

 1. if you’re looking to download files or entire websites, wget might be the preferred tool. If you need to interact with APIs or require support for a wider range of protocols, curl might be more suitable.curl has no automatic resume for interruptions but we can use -C - to continue or use --rery 5 --retry-delay 0 --retry-max-time 40 'http://url'.
   **Note:** The --retry-max-time option sets the maximum total time that curl will spend on the retries. If you set --retry-max-time to 40 seconds and the first retry took 30 seconds and the second retry took 20 seconds, that’s a total of 50 seconds spent on retries, which exceeds the --retry-max-time of 40 seconds. Therefore, curl would not attempt a third retry because the total time spent on retries has exceeded the --retry-max-time.means it sets the maximum number of seconds that are allowed to have elapsed for another retry attempt to be started.
 2. all options (including flags(boolean type such as ls -a)) are arguments, but not all arguments are options. Options and flags modify how a command behaves, while other arguments often specify what the command acts upon
 3. curl options:
    1. -o --> --output file
    2. -O --> --remote-name saves as file
    3. -I --> fetches headers of a document (metadata)
    4. -L --> follows http redirects --Location
    5. -u --> --user [user:password]
    6. -d --> --data for POST
    7. -H --> --header [header]
    8. --retry --> retry attempts, --retry-delay, --retry-max-time 


