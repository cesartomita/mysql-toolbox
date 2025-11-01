SELECT
    table_schema AS 'Database',
    table_name AS 'Table',
    ROUND((data_length + index_length) / 1024, 2) AS 'Size (KB)',
    ROUND((data_length + index_length) / 1024 / 1024, 2) AS 'Size (MB)',
    ROUND((data_length + index_length) / 1024 / 1024 / 1024, 2) AS 'Size (GB)'
FROM
    information_schema.tables
WHERE
    1=1
    AND table_schema NOT IN ('information_schema', 'mysql', 'performance_schema', 'sys') -- opcional: ignora dbs internos
ORDER BY
    (data_length + index_length) DESC;