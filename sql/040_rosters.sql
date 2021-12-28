DROP TABLE IF EXISTS ROSTERS
;

create table rosters (
   year_id integer
  ,team_id varchar(3)
  ,player_id varchar(8)
  ,last_name_tx varchar(25)
  ,first_name_tx varchar(25)
  ,bat_hand_cd varchar(1)
  ,pit_hand_cd varchar(1)
  ,team_tx varchar(3)
  ,pos_tx varchar(5)
)
;
