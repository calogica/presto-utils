
{% macro presto__concat(fields) -%}
{%- if (fields | length ) > 1 -%}
    concat({{ fields | join(', ') }})
{%- else %}
{{ fields | join(', ') }}
{%- endif %}
{%- endmacro %}
