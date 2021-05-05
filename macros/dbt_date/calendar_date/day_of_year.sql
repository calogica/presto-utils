{%- macro presto__day_of_year(date) -%}
    {{ dbt_date.date_part('DAY_OF_YEAR', date) }}
{%- endmacro %}
