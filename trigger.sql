-- 10. Створити тригер, який при додаванні нового рядка в таблицю artist записує
-- значення поля country у верхньому регістрі.


DROP TRIGGER IF EXISTS country_insert ON artist;

-- Перший етап: створення тригерної функції
CREATE OR REPLACE FUNCTION upper_country() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE artist 
          SET country = upper(country) WHERE artist.id = id; 
		  RETURN NULL; -- result is ignored since this is an AFTER trigger
     END;
$$;

-- Другий етап: створення тригеру
CREATE TRIGGER country_insert 
AFTER INSERT ON artist
FOR EACH ROW EXECUTE FUNCTION upper_country()

-- Перевірка роботи.

---DELETE FROM artist where id = 10;

---select * from artist;