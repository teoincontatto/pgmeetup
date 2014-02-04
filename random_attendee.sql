--WITH
--	numbered_attendee(attendee_index, name) AS (
--		SELECT row_number() OVER (), name FROM attendee
--	),
--	random_attendee(random_index) AS (
--		SELECT trunc(random() * (SELECT count(1) FROM attendee) + 1)
--	)
--SELECT name FROM numbered_attendee WHERE attendee_index IN (SELECT random_index FROM random_attendee);

WITH
	random_attendee(random_index) AS (
		SELECT trunc(random() * (SELECT count(1) FROM attendee) + 1)
	)
SELECT nth_value(name, (SELECT random_index FROM random_attendee)::integer) OVER () FROM attendee LIMIT 1;

