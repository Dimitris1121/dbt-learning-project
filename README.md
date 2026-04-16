# dbt E-Learning Analytics Project

A dbt project modelling user engagement for an e-learning platform (inspired by LearnWorlds).
Built on BigQuery using dbt Cloud.

## Project Structure

- **seeds/** — Raw CSV data (users, enrollments)
- **models/staging/** — Cleaned, standardised source models
- **models/marts/** — Business-ready metrics and aggregations

## Models

### Staging
- `stg_users` — Cleaned user data with plan and country info
- `stg_enrollments` — Cleaned enrollment events with completion status

### Mart
- `fct_user_engagement` — User-level engagement metrics including:
  - Total enrollments per user
  - Completed courses
  - Completion rate (%)
  - First and last enrollment dates

## Data Quality
Tests defined in `schema.yml`:
- `not_null` and `unique` on all primary keys
- `relationships` test ensuring enrollment records link to valid users

## Lineage
seeds (users, enrollments) → staging models → fct_user_engagement

## Tech Stack
- dbt Cloud
- Google BigQuery
- GitHub
