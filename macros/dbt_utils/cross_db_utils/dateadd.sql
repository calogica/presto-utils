{% macro presto__dateadd(datepart, interval, from_date_or_timestamp) -%}
    {{ from_date_or_timestamp }} + interval '{{ interval }}' {{ datepart }}
{%- endmacro %}
