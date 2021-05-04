# dbt-utils-presto

This [dbt](https://github.com/fishtown-analytics/dbt) package contains macros
that:

- can be (re)used across dbt projects using Presto/Trini
- define implementations of [dispatched macros](https://docs.getdbt.com/reference/dbt-jinja-functions/adapter/#dispatch) from other packages that can be used on Presto/Trini

## Compatibility

This package provides "shims" for:

- [dbt-utils](https://github.com/fishtown-analytics/dbt-utils) (partial)

## Usage

Wherever a custom presto macro exists, dbt_utils adapter dispatch will pass to `dbt_utils_presto`. This means you can just do `{{ dbt_utils.dateadd(...) }}` without having to reference `dbt_utils_presto`.

## Installation Instructions

To make use of these Presto adaptations in your dbt project, you must do two things:

1. Install both and `dbt-utils-presto` and any of the compatible packages listed above by them to your `packages.yml`

    ```yaml
    packages:
      - package: fishtown-analytics/dbt_utils
        version: {SEE DBT HUB FOR NEWEST VERSION}
      # dbt_utils_presto is not yet on dbt package hub
      - git: "https://github.com/calogica/dbt-utils-presto.git"
        revision: main

    ```

2. Tell the supported package to also look for the `dbt_utils_presto` macros by adding the relevant variables to your `dbt_project.yml`

    ```yaml
    vars:
      dbt_utils_dispatch_list: ['dbt_utils_presto']
      dbt_date_dispatch_list: ['dbt_utils_presto']
      dbt_expectations_dispatch_list: ['dbt_utils_presto']
    ```
