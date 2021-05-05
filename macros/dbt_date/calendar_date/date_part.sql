{% macro presto__date_part(datepart, date) -%}
    extract({{ datepart }} from {{ date }})
{%- endmacro %}
