# Flw Academy - Headless CMS - Strapi

## Requirements

- docker
- docker-compose

## Setup

- Clone the repository
- Run `make install`

## Start Container

- Run `make start`

## Development

- Run `make cms_dev`

---

**N.B.** if you are a MAC M1 user, you have to create this file in the root of the project.
`docker-compose.override.yaml`

```yaml
version: "3.9"
services:
  postgres_db:
    platform: linux/amd64
```
