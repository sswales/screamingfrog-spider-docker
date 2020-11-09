# ScreamingFrog Spider Docker

Screaming Frog Spider 13.2 - Dockerfile Image

## Setup
1. Install deps using `yarn install`.
2. Update `config/licence.txt` with the following:
    - Line 1: Username
    - Line 2: Licence Key

## Usage
```
yarn build
yarn scan
```

Initially until configured you by default will see the help output:

```
usage: ScreamingFrogSEOSpider [crawl-file|options]

Positional arguments:
    crawl-file
                         Specify a crawl to load. This argument will be ignored if there
                         are any other options specified

Options:
    --crawl <url>
                         Start crawling the supplied URL

    --crawl-list <list file>
                         Start crawling the specified URLs in list mode

    --config <config>
                         Supply a config file for the spider to use

    --task-name <task name>
                         Option to name this invocation of the SEO Spider. Will be used
                         as the crawl name when in DB storage mode

    --project-name <project name>
                         Db Storage Mode option sets project name of crawl. This argument
                         will be ignored if in Memory storage mode

    --use-majestic
                         Use Majestic API during crawl

    --use-mozscape
                         Use Mozscape API during crawl

    --use-ahrefs
                         Use Ahrefs API during crawl

    --use-pagespeed
                         Use PageSpeed API during crawl

    --use-google-analytics <google account> <account> <property> <view> <segment>
                         Use Google Analytics API during crawl

    --use-google-search-console <google account> <website>
                         Use Google Search Console API during crawl

    --headless
                         Run in silent mode without a user interface

    --output-folder <output>
                         Where to store saved files. Default: current working directory

    --export-format <csv|xls|xlsx>
                         Supply a format to be used for all exports

    --overwrite
                         Overwrite files in output directory

    --timestamped-output
                         Create a timestamped folder in the output directory, and store
                         all output there

    --save-crawl
                         Save the completed crawl

    --export-tabs <tab:filter,...>
                         Supply a comma separated list of tabs to export. You need to
                         specify the tab name and the filter name separated by a colon

    --bulk-export <[submenu:]export,...>
                         Supply a comma separated list of bulk exports to perform. The
                         export names are the same as in the Bulk Export menu in the UI.
                         To access exports in a submenu, use <submenu-name:export-name>

    --save-report <[submenu:]report,...>
                         Supply a comma separated list of reports to save. The report
                         names are the same as in the Report menu in the UI. To access
                         reports in a submenu, use <submenu-name:report-name>

    --create-sitemap
                         Creates a sitemap from the completed crawl

    --create-images-sitemap
                         Creates an images sitemap from the completed crawl

 -h, --help
                         Print this message and exit
```
