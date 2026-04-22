# Perfume Sales Data Warehouse

This project builds a simple data warehouse from raw Excel data.

## Structure
- `data/`: raw source files
- `schema/staging/`: clean and transform raw data
- `schema/marts/dim/`: dimension tables
- `schema/marts/fact/`: fact tables
- `tests/`: data quality checks

## Flow
raw data → staging → dim/fact

## Notes
- Staging layer handles data cleaning and type casting
- Fact tables store measures (quantity, revenue)
- Dim tables store descriptive attributes