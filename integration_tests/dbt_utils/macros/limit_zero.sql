
{% macro presto__limit_zero() %}
    {{ return('limit 0') }}
{% endmacro %}
