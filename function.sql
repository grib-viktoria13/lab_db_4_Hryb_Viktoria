--- Написати функцію get_artist(country_arg), яка виводить всіх виконавців 
---із заданої країни. Попередньо видалити однойменну процедуру. 

---DROP PROCEDURE IF EXISTS get_artist(varchar);

DROP FUNCTION IF EXISTS get_artist(varchar); 
CREATE OR REPLACE FUNCTION get_artist(country_arg varchar) 
    RETURNS TABLE (artist_name varchar)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT name::varchar
		FROM artist 
		WHERE country = country_arg;
END;
$$

