INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Appts', 'Ives follow up from surgery', '5', current_timestamp, '2017-11-16 10:50:00');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Appts', 'Teds 2 & 1/2 year well child check', '4', current_timestamp, '2017-09-12 10:00:00');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Appts', 'Ives 6 month well child check', '4', current_timestamp, '2017-09-12 10:15:00');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Appts', 'Teds dental checkup', '3', current_timestamp, '2017-10-30 10:00:00');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Appts', 'Ives dental checkup', '3', current_timestamp, '2017-10-30 10:15:00');

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Finish daily project: Self-Managed Robots', '5', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Finish this weekly project: Code Snippet Organizer', '4', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Finish this daily project: Use a PostgreSQL database', '3', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Finish this daily project: Write more complex SQL Statements', '2', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('School', 'Review SQL lessons', '1', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Wipe down counters', '2', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Scrub dining table + chairs', '3', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Sweep + mop tile floors', '2', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Vacuum carpeted areas', '4', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Sanitize restroom', '3', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Wash all bed clothes', '4', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Dust bar/pictures/dressers', '1', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Wash all clothing', '4', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Rearrange pantry + refrigerator', '1', current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Cleaning', 'Take trash to dumpster', '5', current_timestamp);
////////////////////////////////////////////
SELECT title, details FROM todos WHERE completed_at IS NULL AND priority = '3';

SELECT priority, count(*) FROM todos GROUP BY priority;

SELECT details, priority FROM todos WHERE todos.completed_at > current_timestamp - interval '30' day;

SELECT details, min(created_at) from todos where priority = 5 group by title, details limit 1;
