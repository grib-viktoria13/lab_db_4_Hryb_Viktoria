--- Створити процедуру get_artist(country_arg), яка надає інформацію про першого артиста з країни, вказаної в аргументі. 
DROP PROCEDURE IF EXISTS get_artist(varchar(50));
CREATE OR REPLACE PROCEDURE get_vendors(country_arg varchar(50))
LANGUAGE 'plpgsql'
AS $$
DECLARE record_name artist.name%TYPE;
DECLARE record_country artist.country%TYPE;


BEGIN
SELECT name, country into record_name, record_country FROM artist WHERE country = country_arg;
	RAISE INFO 'artist_name: %,  artist_country: %', TRIM(record_name), TRIM(record_country);

	

END;
$$;

