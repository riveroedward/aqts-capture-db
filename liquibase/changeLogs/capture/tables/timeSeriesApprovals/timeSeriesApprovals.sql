create table if not exists ${AQTS_SCHEMA_NAME}.time_series_approvals
(time_series_approvals_id                bigint generated by default as identity (start with 1)
,time_series_unique_id                   character varying (32)
,start_time                              timestamp
,end_time                                timestamp
,approval_user                           text
,comment                                 text
,approval_level                          text
,level_description                       text
,date_applied_utc                        timestamp
,response_time                           timestamp
,response_version                        integer
,primary key (time_series_approvals_id)
,constraint time_series_approvals_ak unique (time_series_unique_id, start_time)
);
