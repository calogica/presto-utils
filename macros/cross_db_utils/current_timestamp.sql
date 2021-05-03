{% macro presto__current_timestamp() -%}
cast(nf_timestamp_now() as timestamp)
{%- endmacro %}
