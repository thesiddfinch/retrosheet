drop table if exists subs;

create table subs (
  game_id varchar(12), 
  inn_ct integer, 
  bat_home_id integer, 
  sub_id varchar(8), 
  sub_home_id integer, 
  sub_lineup_id integer, 
  sub_fld_cd int eger, 
  removed_id varchar(8), 
  removed_fld_cd integer, 
  event_id integer
);

