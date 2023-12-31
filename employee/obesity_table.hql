create database if not exists testdb;
use testdb;
create external table if not exists obesity (
    FID int,
    NAME string,
    Obesity FLOAT,
    SHAPE_Length FLOAT,
    SHAPE_Area FLOAT
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/obesity';