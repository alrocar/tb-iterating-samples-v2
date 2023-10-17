tb datasource append analytics_events datasources/fixtures/analytics_events_errors.ndjson
tb deploy
tb pipe copy run analytics_events_quarantine_to_final --wait --yes
sleep 10
