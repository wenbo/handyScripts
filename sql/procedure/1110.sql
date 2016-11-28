DELIMITER //
CREATE PROCEDURE std_update()
BEGIN
DELETE FROM wp_td_std_sk WHERE model_number = 'AMS1R2J1K';
UPDATE wp_td_std_sk SET t_mil = 7.0, t_mm = 0.175 WHERE model_number = 'AMS560M2K';
UPDATE wp_td_std_sk SET model_number = 'AMS101M2P-CK' WHERE model_number = 'AMS101M2P';
UPDATE wp_td_std_sk SET model_number = 'AMS270M2F-CK' WHERE model_number = 'AMS270M2F';
UPDATE wp_td_std_sk SET model_number = 'AMS560M2K-CK' WHERE model_number = 'AMS560M2K';
UPDATE wp_td_std_sk SET model_number = 'BMS8R2K2B-CK' WHERE model_number = 'BMS8R2K2B';
UPDATE wp_td_std_sk SET model_number = 'CMS101M2PC-CK' WHERE model_number = 'CMS101M2PC';
UPDATE wp_td_std_sk SET model_number = 'CMS390M2HC-CK' WHERE model_number = 'CMS390M2HC';
UPDATE wp_td_std_sk SET model_number = 'CMS561K2UC-CK' WHERE model_number = 'CMS561K2UC';
UPDATE wp_td_std_sk SET model_number = 'CMS561M2UC-CK' WHERE model_number = 'CMS561M2UC';
END
//
DELIMITER ;
CALL std_update();

LOAD DATA LOCAL INFILE '/Users/kembostaff/workspace/kembo/git/tecdia_sumitomo/backup/import.csv'
IGNORE INTO TABLE wp_td_std_sk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(model_number, cap, cap_tol, l_mil, l_mm, l_mil_tol, l_mm_tol, w_mil, w_mm, w_mil_tol, w_mm_tol, t_mil, t_mm, t_mil_tol, t_mm_tol, rwv, type, tc, k_val, created, updated);

