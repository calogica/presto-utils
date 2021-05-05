{% macro presto__convert_timezone(column, target_tz, source_tz) -%}
cast({{ column }} at time zone '{{ target_tz }}' as {{ dbt_utils.type_timestamp() }})
{%- endmacro -%}
