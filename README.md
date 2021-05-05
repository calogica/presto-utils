# presto-utils

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros
that:

- can be (re)used across dbt projects using Presto/Trini
- define implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages that can be used on Presto/Trini

## Compatibility

This package provides "shims" for:

- [dbt-utils](https://github.com/fishtown-analytics/dbt-utils) (partial)

## Usage

Wherever a custom presto macro exists, dbt_utils adapter dispatch will pass to `presto_utils`. This means you can just do `{{ dbt_utils.dateadd(...) }}` without having to reference `presto_utils`.

## Installation Instructions

To make use of these Presto adaptations in your dbt project, you must do two things:

1. Install both and `presto-utils` and any of the compatible packages listed above by them to your `packages.yml`

    ```yaml
    packages:
      - package: fishtown-analytics/dbt_utils
        version: {SEE DBT HUB FOR NEWEST VERSION}
      # presto_utils is not yet on dbt package hub
      - git: "https://github.com/calogica/presto-utils.git"
        revision: main

    ```

2. Tell the supported package to also look for the `presto_utils` macros by adding the relevant variables to your `dbt_project.yml`

    ```yaml
    vars:
      dbt_utils_dispatch_list: ['presto_utils']
      dbt_date_dispatch_list: ['presto_utils']
      dbt_expectations_dispatch_list: ['presto_utils']
    ```
