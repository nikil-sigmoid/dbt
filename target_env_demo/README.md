
# DBT vars and env_vars

This project demostrates passing variables from **dbt_prject.yml** file, **dbt cli** and environment variables from CLI and logging their values from models.





## Usage/Examples


In **dbt_project.yml** file, define variables with default values.
```yaml
vars:
  TARGET: "dev"
  event_name: "update"

```
Log values of variables from models.
```yaml
{{ log("Running in: " ~ var('TARGET') ~ "Environment") }}
{{ log("Event name is: " ~ var('event_name')) }}
```


```yaml
postgres_profile:
  outputs:

    dev:
      type: postgres
      ....
      ....

    prod:
      type: postgres
      ....
      ....

  target: "{{ var('TARGET') }}"

```

Passing variable from DBT cli:
```bash
dbt run --vars '{"TARGET": "test", "event_name": "play"}'
```
