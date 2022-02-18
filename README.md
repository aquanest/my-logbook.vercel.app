# my-logbook.vercel.app

My website works on Vercel.

- [dives.dev - My Dive Logbook](https://dives.dev/)

## Overview

![Architecture](https://github.com/umatare5/my-logbook.vercel.app/blob/images/architecture.png)

## Commands

| Command        | Description                       |
| -------------- | --------------------------------- |
| `make build`   | Build static files using hugo.    |
| `make serve`   | Run hugo server on local.         |
| `make release` | Push changes to `main` branch.    |

## Repositories

This web-server depends on following repositories.

### Frontend

- This repo

### Backend - Logbook API

- Source

  Generate libraries for Logbook API using OpenAPI.

  - [umatare5/logbook-openapi-src](https://github.com/umatare5/logbook-openapi-src)

- Libraries

  Libraries will be invoked from Logbook CLI and a router of Logbook API.

  - [umatare5/logbook-go](https://github.com/umatare5/logbook-go)
  - [umatare5/logbook-api-router-impl](https://github.com/umatare5/logbook-api-router-impl)

- API

  Serve divelogs.

  - [umatare5/logbook-api](https://github.com/umatare5/logbook-api)

### Backend - ATMOS Platform API

- Sources

  Generate libraries for ATMOS Platform API using OpenAPI.

  - [umatare5/atmos-openapi-src](https://github.com/umatare5/atmos-openapi-src)
  - [umatare5/atmos-login-openapi-src](https://github.com/umatare5/atmos-login-openapi-src) (Private)

- Libraries

  Libraries will be invoked from ATMOS CLI.

  - [umatare5/atmos-go](https://github.com/umatare5/atmos-go)
  - [umatare5/atmos-login-go](https://github.com/umatare5/atmos-login-go) (Private)

- CLI

  Fetch divelogs from ATMOS Platform.

  - [umatare5/atmos-cli](https://github.com/umatare5/atmos-cli)
  - [umatare5/atmos-login-cli](https://github.com/umatare5/atmos-login-cli) (Private)

### Infrastructure

- Public Cloud

  Publish Logbook API using GCP.

  - [umatare5/my-cloud-terraform](https://github.com/umatare5/my-cloud-terraform) (Private)

- On Premises

  Run monitoring system using On-Premises.

  - [umatare5/my-infra-network](https://github.com/umatare5/my-infra-network)
  - [umatare5/my-infra-ansible](https://github.com/umatare5/my-infra-ansible)

- Monitoring

  Monitor each status of Logbook API using Prometheus.

  - [umatare5/my-prometheus-etc](https://github.com/umatare5/my-prometheus-etc) (Private)
  - [umatare5/my-alertmanager-etc](https://github.com/umatare5/my-alertmanager-etc) (Private)
  - [umatare5/my-blackbox-exporter-etc](https://github.com/umatare5/my-blackbox-exporter-etc) (Private)
