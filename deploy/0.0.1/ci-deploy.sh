tb deploy --populate --fixtures
tb datasource append analytics_events datasources/fixtures/analytics_events_errors.ndjson
tb pipe copy run analytics_events_quarantine_to_final --wait --yes
