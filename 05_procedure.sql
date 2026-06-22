DELIMITER $$

CREATE PROCEDURE tampil_semua_paket()
BEGIN
    SELECT * FROM paket;
END $$

DELIMITER ;

CALL tampil_semua_paket();