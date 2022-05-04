# nomad-stop-action
 github action plugin for stoping job in nomad


## Usage




```yaml
name: Deploy Nomad Job
on:
  pull_request:
    branches:
      - main
    types: [closed]
jobs:
  deploy:
    name: delete dev stand after PR merge
    runs-on: ubuntu-latest
    steps:
      - name: Deploy with Nomad
        uses: marfatech/nomad-cli@v0.0.1
        with:
          token: ${{ secrets.YOUR_NOMAD_SECRET }}
          address: ${{ secrets.YOUR_NOMAD_SERVER }}
          nomad_cli_args: "job stop -purge ${JOB_NAME}"
```