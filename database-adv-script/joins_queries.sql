-- Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT 
    u.user_id AS user_id,
    u.first_name || ' ' || u.last_name AS full_name,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM users user
INNER JOIN booking b ON u.user_id = b.user_id;

-- Write a query using a LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
SELECT
    p.property_id AS property_id,
    p.name AS property_name,
    r.review_id AS review_id,
    r.message,
    r.comment,
    r.rating,
    r.created_at 
FROM property p
LEFT JOIN review r ON p.property_id = r.property_id;

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
SELECT
    u.user_id AS user_id,
    b.booking_id AS booking_id,
    FROM users u
    FULL OUTER JOIN booking b ON u.user_id = b.user_id;

-- The same query in SQLite
SELECT
    u.user_id AS user_id,
    b.booking_id AS booking_id
From users u
LEFT JOIN booking b ON u.user_id = b.user_id

UNION

SELECT
    u.user_id AS user_id,
    b.booking_id AS booking_id
FROM booking b
LEFT JOIN users u ON u.user_id = b.user_id;