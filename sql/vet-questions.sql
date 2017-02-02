-- view and grade
SELECT id, username, question, error
FROM [isys4283].[dbo].[tempq]
WHERE created_at > '2017-01-25 22:23:44.833'
ORDER BY username

-- delete undesireables
DELETE FROM [isys4283].[dbo].[tempq]
WHERE id IN (5,9,16,27);

-- import gold
INSERT INTO [isys4283].[dbo].[questions]
(id, question, created_at)
SELECT question_id, question, created_at
FROM [isys4283].[dbo].[tempq]
WHERE created_at > '2017-01-25 22:23:44.833'
