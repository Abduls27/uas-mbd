-- Trigger untuk mengatur tanggal saat insert data pada tabel modules
DELIMITER $$
CREATE TRIGGER `tanggal` BEFORE INSERT ON `modules`
 FOR EACH ROW 
 BEGIN
  SET NEW.created_at = NOW();
  SET NEW.updated_at = NOW();
END $$
DELIMITER ;

-- trigger untuk mengatur tanggal saat insert data pada tabel submodules
DELIMITER $$
CREATE TRIGGER `tanggal-submodules` BEFORE INSERT ON `submodules`
 FOR EACH ROW 
 BEGIN
  SET NEW.created_at = NOW();
  SET NEW.updated_at = NOW();
END $$
DELIMITER ;


-- trigger untuk mengatur tanggal saat insert data pada tabel materials
DELIMITER $$
CREATE TRIGGER `tanggal-materials` BEFORE INSERT ON `materials`
 FOR EACH ROW 
 BEGIN
  SET NEW.created_at = NOW();
  SET NEW.updated_at = NOW();
END $$
DELIMITER ;

-- stored procedure untuk mencari judul dan kategori modul
DELIMITER $$
CREATE PROCEDURE selectmodule()
BEGIN
    SELECT title, category FROM modules;
END$$
DELIMITER ;


-- stored procedure untuk mencari judul dan id submodul material
DELIMITER $$ 
CREATE PROCEDURE selectmaterial()
BEGIN
    SELECT title, id_submodule FROM materials;
END$$
DELIMITER ;


-- stored procedure untuk mencari nama email dan jenis autentifikasi user
DELIMITER $$
CREATE PROCEDURE selectuser()
BEGIN
    SELECT name, email, auth_type FROM users;
END$$
DELIMITER ;


-- stored function untuk mengambil semua kategori modul
DELIMITER //
CREATE FUNCTION get_all_module_category() RETURNS VARCHAR(255)
BEGIN
  DECLARE result TEXT;
  SELECT GROUP_CONCAT(CONCAT('Kategori: ', category) SEPARATOR '  ')
  INTO result
  FROM modules;
  RETURN result;
END//
DELIMITER ;
