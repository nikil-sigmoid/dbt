
# DBT packages demo

This project demonstrates creating packages.yml file, downloading them and checking out available macros and models.




## Usage/Examples

Create packages.yml file your project directory(where your dbt_project.yml is present).

Example:
If you want to download following packages:
    
1 ) **dbt-labs/snowplowe**, version **0.4.1** from dbt Hub.

2 ) **dbt-currency** from github, **main** branch.

3 ) **dbt_base_project** from local.

Semantic version is supported by dbt.
```yaml
packages:  
  - package: dbt-labs/snowplow    
    version: "0.7.0"

  - git: "https://github.com/nikil-sigmoid/dbt-currency.git"
    revision: "main"

  - local: /Users/nik/Desktop/my_projects/dbt/dbt_base_project
```

Now run below command to download specified packages to dbt_modules directory in project directory.
```bash
dbt deps
```

