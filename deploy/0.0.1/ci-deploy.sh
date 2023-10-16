tb datasource append analytics_events datasources/fixtures/analytics_events_errors.ndjson
tb push pipes/analytics_events_quarantine_to_final.pipe
tb pipe copy run analytics_events_quarantine_to_final --wait --yes
sleep 10
