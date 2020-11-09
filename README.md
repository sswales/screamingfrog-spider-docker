# ScreamingFrog Spider Docker

ScreamingFrog Spider 13.2 - Dockerfile Image

## Setup
1. Install deps using `yarn install`.
2. Update `package.json` the `scan` command by replacing `http://www.swalesconsultancy.co.uk` with your website address. 
3. Update `config/licence.txt` with the following:
    - Line 1: Username
    - Line 2: Licence Key

## Usage
```
yarn build
yarn scan
```
Once the `scan` has completed you will have the report visible in your local directory: `~/crawls`.