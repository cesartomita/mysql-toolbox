SELECT 
    TABLE_SCHEMA AS 'Banco',
    TABLE_NAME AS 'Tabela',
    ENGINE AS 'Motor',
    ROUND((DATA_LENGTH + INDEX_LENGTH) / 1024 / 1024, 2) AS 'Tamanho (MB)',
    ROUND(DATA_FREE / 1024 / 1024, 2) AS 'Fragmentacao (MB)',
    ROUND((DATA_FREE / (DATA_LENGTH + INDEX_LENGTH)) * 100, 2) AS 'Fragmentacao %'
FROM
	information_schema.TABLES 
WHERE
	TABLE_SCHEMA = 'nome_da_tabela'
	AND (DATA_LENGTH + INDEX_LENGTH) > 0
ORDER BY
	DATA_FREE DESC;