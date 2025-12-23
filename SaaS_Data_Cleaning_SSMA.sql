CREATE TABLE users_clean (
    user_id INT PRIMARY KEY,
    signup_date DATE,
    country VARCHAR(50),
    plan VARCHAR(50)
);

INSERT INTO users_clean (user_id, signup_date, country, plan)
SELECT
    user_id,
    TRY_CONVERT(DATE, signup_date) AS signup_date,
    LTRIM(RTRIM(country)) AS country,
    LOWER(REPLACE(LTRIM(RTRIM(plan)), ',', '')) AS plan
FROM stg_users;

CREATE TABLE subscriptions_clean (
    user_id INT,
    signup_date DATE,
    country VARCHAR(50),
    plan VARCHAR(50),
    subscription_status VARCHAR(20),
    revenue DECIMAL(10,2),
    churn_date DATE
);

INSERT INTO subscriptions_clean
SELECT
    user_id,
    TRY_CONVERT(DATE, signup_date),
    LTRIM(RTRIM(country)),
    LOWER(LTRIM(RTRIM(plan))),
    LOWER(LTRIM(RTRIM(subscription_status))),
    TRY_CONVERT(DECIMAL(10,2), revenue),
    TRY_CONVERT(DATE, churn_date)
FROM stg_subscriptions;

CREATE TABLE events_clean (
    user_id INT,
    event_date DATETIME,
    event_type VARCHAR(50)
);

INSERT INTO events_clean
SELECT
    user_id,
    TRY_CONVERT(DATETIME, event_date),
    LOWER(LTRIM(RTRIM(event_type)))
FROM stg_events;

WITH dedup AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY user_id, event_date, event_type
               ORDER BY user_id
           ) AS rn
    FROM events_clean
)
DELETE FROM dedup
WHERE rn > 1;

CREATE INDEX idx_users_user_id ON users_clean(user_id);
CREATE INDEX idx_events_user_id ON events_clean(user_id);
CREATE INDEX idx_events_date ON events_clean(event_date);


