DROP TABLE IF EXISTS EVENTS;

create table events (
   game_id varchar(12)
  ,away_team_id varchar(3)
  ,inn_ct integer
  ,bat_home_id integer
  ,outs_ct integer
  ,balls_ct integer
  ,strikes_ct integer
  ,pitch_seq_tx varchar(40)
  ,away_score_ct integer
  ,home_score_ct integer
  ,bat_id varchar(8)
  ,bat_hand_cd varchar(1)
  ,resp_bat_id varchar(8)
  ,resp_bat_hand_cd varchar(1)
  ,pit_id varchar(8)
  ,pit_hand_cd varchar(1)
  ,res_pit_id varchar(8)
  ,res_pit_hand_cd varchar(1)
  ,pos2_fld_id varchar(8)
  ,pos3_fld_id varchar(8)
  ,pos4_fld_id varchar(8)
  ,pos5_fld_id varchar(8)
  ,pos6_fld_id varchar(8)
  ,pos7_fld_id varchar(8)
  ,pos8_fld_id varchar(8)
  ,pos9_fld_id varchar(8)
  ,base1_run_id varchar(8)
  ,base2_run_id varchar(8)
  ,base3_run_id varchar(8)
  ,event_tx varchar(100)
  ,leadoff_fl varchar(1)
  ,ph_fl varchar(1)
  ,bat_fld_cd integer
  ,bat_lineup_id integer
  ,event_cd integer
  ,bat_event_fl varchar(1)
  ,ab_fl varchar(1)
  ,h_cd integer
  ,sh_fl varchar(1)
  ,sf_fl varchar(1)
  ,event_outs_ct integer
  ,dp_fl varchar(1)
  ,tp_fl varchar(1)
  ,rbi_ct integer
  ,wp_fl varchar(1)
  ,pb_fl varchar(1)
  ,fld_cd integer
  ,battedball_cd varchar(1)
  ,bunt_fl varchar(1)
  ,foul_fl varchar(1)
  ,battedball_loc_tx varchar(5)
  ,err_ct integer
  ,err1_fld_cd integer
  ,err1_cd varchar(1)
  ,err2_fld_cd integer
  ,err2_cd varchar(1)
  ,err3_fld_cd integer
  ,err3_cd varchar(1)
  ,bat_dest_id integer
  ,run1_dest_id integer
  ,run2_dest_id integer
  ,run3_dest_id integer
  ,bat_play_tx varchar(8)
  ,run1_play_tx varchar(15)
  ,run2_play_tx varchar(15)
  ,run3_play_tx varchar(15)
  ,run1_sb_fl varchar(1)
  ,run2_sb_fl varchar(1)
  ,run3_sb_fl varchar(1)
  ,run1_cs_fl varchar(1)
  ,run2_cs_fl varchar(1)
  ,run3_cs_fl varchar(1)
  ,run1_pk_fl varchar(1)
  ,run2_pk_fl varchar(1)
  ,run3_pk_fl varchar(1)
  ,run1_resp_pit_id varchar(8)
  ,run2_resp_pit_id varchar(8)
  ,run3_resp_pit_id varchar(8)
  ,game_new_fl varchar(1)
  ,game_end_fl varchar(1)
  ,pr_run1_fl varchar(1)
  ,pr_run2_fl varchar(1)
  ,pr_run3_fl varchar(1)
  ,removed_for_pr_run1_id varchar(8)
  ,removed_for_pr_run2_id varchar(8)
  ,removed_for_pr_run3_id varchar(8)
  ,removed_for_ph_bat_id varchar(8)
  ,removed_for_ph_bat_fld_cd integer
  ,po1_fld_cd integer
  ,po2_fld_cd integer
  ,po3_fld_cd integer
  ,ass1_fld_cd integer
  ,ass2_fld_cd integer
  ,ass3_fld_cd integer
  ,ass4_fld_cd integer
  ,ass5_fld_cd integer
  ,event_id integer
  ,home_team_id varchar(3)
  ,bat_team_id varchar(3)
  ,fld_team_id varchar(3)
  ,bat_last_id integer
  ,inn_new_fl varchar(1)
  ,inn_end_fl varchar(1)
  ,start_bat_score_ct integer
  ,start_fld_score_ct integer
  ,inn_runs_ct integer
  ,game_pa_ct integer
  ,inn_pa_ct integer
  ,pa_new_fl varchar(1)
  ,pa_trunc_fl varchar(1)
  ,start_bases_cd integer
  ,end_bases_cd integer
  ,bat_start_fl varchar(1)
  ,resp_bat_start_fl varchar(1)
  ,bat_on_deck_id integer
  ,bat_in_hold_id integer
  ,pit_start_fl varchar(1)
  ,resp_pit_start_fl varchar(1)
  ,run1_fld_cd integer
  ,run1_lineup_cd integer
  ,run1_origin_event_id integer
  ,run2_fld_cd integer
  ,run2_lineup_cd integer
  ,run2_origin_event_id integer
  ,run3_fld_cd integer
  ,run3_lineup_cd integer
  ,run3_origin_event_id integer
  ,run1_resp_cat_id integer
  ,run2_resp_cat_id integer
  ,run3_resp_cat_id integer
  ,pa_ball_ct integer
  ,pa_called_ball_ct integer
  ,pa_intent_ball_ct integer
  ,pa_pitchout_ball_ct integer
  ,pa_hitbatter_ball_ct integer
  ,pa_inplay_strike_ct integer
  ,pa_other_ball_ct integer
  ,pa_strike_ct integer
  ,pa_called_strike_ct integer
  ,pa_swingmiss_strike_ct integer
  ,pa_foul_strike_ct integer
  ,pa_other_strike_ct integer
  ,event_runs_ct integer
  ,fld_id varchar(8)
  ,base2_force_fl varchar(1)
  ,base3_force_fl varchar(1)
  ,base4_force_fl varchar(1)
  ,bat_safe_err_fl varchar(1)
  ,bat_fate_id integer
  ,run1_fate_id integer
  ,run2_fate_id integer
  ,run3_fate_id integer
  ,fate_runs_ct integer
  ,ass6_fld_cd integer
  ,ass7_fld_cd integer
  ,ass8_fld_cd integer
  ,ass9_fld_cd integer
  ,ass10_fld_cd integer
  ,unknown_out_exc_fl varchar(1)
  ,uncertain_play_exc_fl varchar(1)
);
