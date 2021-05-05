{%- macro presto__week_start(date) -%}
case
    when {{ dbt_date.day_of_week(dbt_utils.date_trunc('week', date), isoweek=False) }} = 1
    then {{ dbt_date.n_days_ago(
            dbt_date.day_of_week(date, isoweek=False) ~ " - 1",
            date
            ) }}
end
{%- endmacro %}
