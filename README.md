# cci-pet-care-app

This is a sample pet care management app for the force.com platform using CumulusCI.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.
4. After building your changes, run `cci task run retrieve_changes --org dev` to pull the changes into your local repo.

## Project Settings:
  * Managed Package? No
  * Source Format: sfdx
  * Extend Project: N/A
  * Branches
    * Default: main
    * Feature: feature/
    * Beta Tag: beta/
    * Release Tag: release/
* Apex Tests:
    * File Name Pattern: %TEST%
    * Code Coverage: 75%

## Project Setup
  1. After installing CumulusCI, connect to Github. `cci service connect github <<ALIAS FOR GITHUB>>`
  1. Enter in your username and email to Github
  1. A code will be displayed in the terminal, copy the code
  1. Your browser will open, log in and enter in the code
  1. Github will be authenticated. Validate in your terminal `cci service list`
  1. Authenticate to your DevHub using the **sf cli** `sf org login web --set-default-dev-hub --alias devhub`
  1. Connect CumulusCI to the devhub org `cci service connect devhub <<MY-ALIAS>> --project --username <<Devhub-Username>>`