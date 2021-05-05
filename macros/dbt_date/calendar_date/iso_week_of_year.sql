{%- macro presto__iso_week_of_year(date) -%}
{{ dbt_date._iso_week_of_year(date, 'WEEK') }}
{%- endmacro %}
