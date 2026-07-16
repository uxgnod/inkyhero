# Inky Hero

Inky Hero is a self-hostable personal memo and long-term memory application.

The project is currently establishing its Rails engineering baseline. Memo,
AI, search, authentication, and other product features are not implemented yet.

## Technology baseline

- Ruby 3.4.8
- Rails 8.1.3
- Hotwire
- PostgreSQL 18
- Minitest
- Docker

PostgreSQL is the only supported application database. SQLite is not supported.

## Local setup

Start Postgres.app, then run:

```bash
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
bin/setup --skip-server
```

This installs the application dependencies and prepares:

- `inkyhero_development`
- `inkyhero_test`

## Run locally

```bash
bin/dev
```

Open <http://127.0.0.1:3000>.

The application health endpoint is available at
<http://127.0.0.1:3000/up>.

## Test and quality checks

Run the Rails test suite:

```bash
bin/rails test
```

Run system tests:

```bash
bin/rails test:system
```

Run the complete local CI workflow:

```bash
bin/ci
```

## Production image smoke test

Build the application image:

```bash
docker build -t inkyhero:local .
```

The production image expects PostgreSQL through `DATABASE_URL` and the Rails
credentials key through `RAILS_MASTER_KEY`.

Development Compose and Dev Container support will be added in a later
engineering-baseline ticket.

## Project documentation

Maintainer and agent planning context is stored locally at
`.local/docs/PROJECT_BLUEPRINT.md`. The `.local` directory is intentionally
excluded from Git and Docker build contexts.

The local Rails and Docker teaching guide is available at
`.local/docs/RAILS_AND_DOCKER_GUIDE.md`.

## License

The final open-source license and trademark policy will be established in the
project's dedicated licensing ticket.
