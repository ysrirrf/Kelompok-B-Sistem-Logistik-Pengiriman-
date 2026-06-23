DELIMITER $$

CREATE TRIGGER trg_cek_berat
BEFORE INSERT ON paket
FOR EACH ROW
BEGIN
    IF NEW.berat_kg <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Berat paket harus lebih dari 0';
    END IF;
END $$

DELIMITER ;

INSERT INTO paket
VALUES ('PKT999',-1,'Tes','2026-06-15',1,2,1);
