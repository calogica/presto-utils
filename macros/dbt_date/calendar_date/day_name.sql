{%- macro presto__day_name(date, short) -%}
{% if short -%}
{%- set f = "'%a'" -%}
{%- else -%}
{%- set f = "'%W'" -%}
{%- endif -%}
date_format({{ date }}, {{ f }})
{%- endmacro %}
