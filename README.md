# pypersonalfin

This project has the goal to get multiple statements from financial sources and group them in a spreadsheet to make our personal financial control easier.

## Setup

Clone this repo.

This is a `python 3.7` project, make sure you have it installed (recommend a virtualenv activated also) and then to install dependencies:

`make setup`

## Run

`make run`

It will seach the `data` folder inside this project for csv files (.txt or .csv valid files) containing names of known financial sources (listed below) and will process their content and export to a new .csv file on the `output` folder that you can then import on a spreadsheet.

## Run with locale

`make run LOCALE=pt_br`

This script currently support portuguese from Brazil or US english locale (default) to export the final output.

## Import the generated file to a Spreadsheet

You can manually import the generated .csv file on any Spreadsheet you would like to use the informations as you like, below you have examples on each vendor and even some automatically ways using this same project.

### Google Spreadsheet

Steps to import a csv file on a already created Google Spreadsheet:

 * On the menu file -> import
 * Go to upload tab and select the exported csv that is on the `output` folder on this project
 * You can choose `insert new sheet(s)` option so you can use the data as you want without replacing any current value on your spreadsheet

## Financial sources

List of currently supported financial sources to group data.

### Nubank

This is a Brazilian card company.

Get your card statements from them by:

* Logging into their website: https://nubank.com.br/
* Then on the bills section (https://app.nubank.com.br/#/bills) click on a closed bill
* It will have an "export to csv" button
* Make sure you save this file on the `data` folder inside this project with a name starting with `nubank` and with the `csv` or `txt` extension

### Itau

This is a Brazilian bank.

Get your bank statements from them by:

* Logging into their website: https://www.itau.com.br/
* Will have a button see bank statements on the main page after login
* Select the time period, click on the 3 dots option (called others when passing the mouse) next to the pdf print and select export to text file
* Make sure you save this file on the `data` folder inside this project with a name starting with `itau` and with the `csv` or `txt` extension
