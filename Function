DELIMITER $$

CREATE FUNCTION hitung_ppn(total DECIMAL(12,2))
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    RETURN total * 0.11;
END $$

DELIMITER ;

SELECT
    id_pembayaran,
    total_biaya,
    hitung_ppn(total_biaya) AS ppn
FROM pembayaran;
