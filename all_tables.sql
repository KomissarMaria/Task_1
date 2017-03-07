SELECT
	table_name,
	table_rows
FROM
	information_schema.tables
WHERE
	table_schema=DATABASE();
