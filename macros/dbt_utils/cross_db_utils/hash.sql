{% macro presto__hash(field) -%}
    md5(cast({{ field }} as varbinary))
{%- endmacro %}
