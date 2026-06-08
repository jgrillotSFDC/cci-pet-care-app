# Dev Container Notes

## Salesforce CLI + CumulusCI compatibility

This dev container sets the following environment variable in `devcontainer.json`:

- `SF_TEMP_SHOW_SECRETS=true`

### Why this is set

With newer Salesforce CLI (`sf`) versions, `sf org display --json` hides secret values like `accessToken` by default.

Current project tooling (`cumulusci==4.10.0`) still expects a raw access token from CLI output for some org operations.  
Without this variable, commands like:

- `cci flow run dev_org --org dev`

can fail with authentication errors such as `INVALID_AUTH_HEADER`.

### When to remove this

Remove `SF_TEMP_SHOW_SECRETS` once CumulusCI and/or project tooling no longer requires this temporary compatibility behavior with `sf`.
