DELIMITER $$
CREATE TRIGGER `tanggal` BEFORE INSERT ON `modules`
 FOR EACH ROW 
 BEGIN
  SET NEW.created_at = NOW();
  SET NEW.updated_at = NOW();
END $$
DELIMITER ;