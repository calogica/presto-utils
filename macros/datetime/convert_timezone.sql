{% macro presto__convert_timezone(column, target_tz, source_tz) -%}
cast({{ column }} as {{ dbt_utils.type_timestamp() }}) at time zone '{{ target_tz }}'
{%- endmacro -%}
