# Renew access-token

- Fetch access-token.

  ```bash
  atmos-login authenticate | jq .response.token -r
  ```

- Update `ATMOS_TOKEN` in `~/.envrc`.

  ```bash
  vi ~/.envrc
  ```

- Update Cloud Run's image with new token.

  ```bash
  cd ~/LOCAL/logbook-api && make deploy
  cd -
  ```
