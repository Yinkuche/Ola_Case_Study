SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE CDW_SAPP_D_TIME
PARTITION (QUARTER)
SELECT TIMEID,
DAY,
MONTH,
YEAR,
QUARTER

from CDW_SAPP_D_TIME_ONE;