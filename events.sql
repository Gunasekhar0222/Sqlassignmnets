create table events (
event_type integer not null,
value integer not null,
time timestamp not null,
unique(event_type,time)
);
INSERT INTO events VALUES('2','5','2015-05-09 12:42:00');
INSERT INTO events VALUES('4','-42','2015-05-09 13:19:57');
INSERT INTO events VALUES('2','2','2015-05-09 14:48:30');
INSERT INTO events VALUES('2','7','2015-05-09 12:45:39');
INSERT INTO events VALUES('3','16','2015-05-09 13:19:57');
INSERT INTO events VALUES('3','20','2015-05-09 15:01:19');
SELECT * FROM events;
SELECT * FROM (
select
ecent_type,value-lead(value) over(partition by event_type orderby event_type) as sub_val
from(select value,event_type,dense_rank() over(partition by event_type order by time desc) as rnk from events)a
where a.rnk <=2)b where b.sub_val is not null;
