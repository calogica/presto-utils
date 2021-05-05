{% macro presto__get_tables_by_pattern_sql(schema_pattern, table_pattern, exclude='', database=target.database) %}

        select distinct
            table_schema as "table_schema",
            table_name as "table_name",
            case table_type
                when 'BASE TABLE' then 'table'
                else lower(table_type)
            end as "table_type"
        from {{ database }}.information_schema.tables
        -- pattern matching here tends to be too heavy for
        -- presto hive catalogs so we just do an exact match
        where table_schema = '{{ schema_pattern }}'
        and table_name like '{{ table_pattern }}'
        and table_name not like '{{ exclude }}'

{% endmacro %}
