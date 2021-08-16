{%- macro presto__day_of_week(date, isoweek) -%}

    {%- set dow = dbt_date.date_part('DAY_OF_WEEK', date) -%}

    {%- if not isoweek -%}
    -- Presto always returns ISO weeks, so we need to adjust
    case
        -- Shift start of week from Monday (1) to Sunday (7)
        when {{ dow }} = 7 then 1
        else {{ dow }} + 1
    end
    {%- else -%}
    {{ dow }}
    {%- endif -%}

{%- endmacro %}

