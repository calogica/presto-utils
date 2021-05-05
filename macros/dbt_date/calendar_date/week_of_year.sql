
{%- macro presto__week_of_year(date) -%}
{{ exceptions.warn(
    "dbt_date.week_of_year is not supported on this adapter, since Presto only returns ISO weeks.\n" +
    "See: https://prestodb.io/docs/current/functions/datetime.html#mysql-date-functions"
) }}
cast({{ dbt_date.date_part('week', date) }} as {{ dbt_utils.type_int() }})
{%- endmacro %}
