-- User table 
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role, created_at)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', 'guest', CURRENT_TIMESTAMP),
    ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', 'host', CURRENT_TIMESTAMP),
    ('33333333-3333-3333-3333-333333333333', 'Carol', 'White', 'carol@example.com', 'hashed_pw3', 'admin', CURRENT_TIMESTAMP),
    ('44444444-4444-4444-4444-444444444444', 'David', 'Brown', 'david@example.com', 'hashed_pw4', 'guest', CURRENT_TIMESTAMP);

-- Property Table
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    ('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Oceanview Apartment', '2-bedroom with ocean view', 'Miami, FL', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Cozy Cabin', 'Rustic mountain cabin for 4', 'Denver, CO', 95.50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
    ('book1111-aaaa-1111-aaaa-book11111111', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 480.00, 'confirmed', CURRENT_TIMESTAMP),
    ('book2222-bbbb-2222-bbbb-book22222222', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', '2025-06-10', '2025-06-13', 286.50, 'pending', CURRENT_TIMESTAMP);

-- Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
    ('pay1111-aaaa-1111-aaaa-pay11111111', 'book1111-aaaa-1111-aaaa-book11111111', 480.00, CURRENT_TIMESTAMP, 'credit_card'),
    ('pay2222-bbbb-2222-bbbb-pay22222222', 'book2222-bbbb-2222-bbbb-book22222222', 286.50, CURRENT_TIMESTAMP, 'paypal');

-- Review Table
INSERT INTO Review (review_id, property_id, host_id, user_id, rating, comment, created_at)
VALUES 
    ('rev1111-aaaa-1111-aaaa-rev11111111', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 5, 'Amazing view and clean space!', CURRENT_TIMESTAMP),
    ('rev2222-bbbb-2222-bbbb-rev22222222', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', NULL, '44444444-4444-4444-4444-444444444444', 4, 'Very cozy but a bit far from town.', CURRENT_TIMESTAMP);

-- Message Table 
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
    ('msg1111-aaaa-1111-aaaa-msg11111111', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi! Is your apartment available next weekend?', CURRENT_TIMESTAMP),
    ('msg2222-bbbb-2222-bbbb-msg22222222', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it is! Let me know if you’d like to book.', CURRENT_TIMESTAMP);
