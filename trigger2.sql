-- 12. Створити тригер, який виконує аудит delete в таблиці artist: 
-- DELETE рядка в таблиці artist має фіксуватися в окремій 
-- таблиці artist_audit, в якій також фіксується ім'я користувача, поточний час та ім'я виконавця, якого видалили.
 
SELECT user from artist;

DROP TABLE IF EXISTS artist_audit;

CREATE TABLE artist_audit(
	id SERIAL PRIMARY KEY,
	user_name varchar(50) NOT NULL,
	updated TIMESTAMP,
	artist_name varchar(50)
);

CREATE OR REPLACE FUNCTION table_artist_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
 	INSERT INTO artist_audit(user_name, updated, artist_name)
		VALUES(user, NOW(), OLD.name );
	RETURN NULL;
END;
$$ ;

CREATE TRIGGER artist_update_details 
AFTER DELETE ON artist
FOR EACH ROW EXECUTE FUNCTION table_artist_audit();

-- Перевіримо, як працює тригер. Переглянемо спочатку вміст таблиці artist
SELECT * FROM artist
 
