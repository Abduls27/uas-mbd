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