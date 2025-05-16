# Normalizatoin
Looking through the current database, all requirements of 1 Normalization form are satisfied e.i.,
* Roles are not used to order information
* Data types are not mixed within the same column
* All tables have Primary Keys
* No repeating groups seen 

Again 2 Normalization Form is satisfied
* Each non-key attribute in the table is dependant on the primary key

Finally 3 Normalization Form is satisfied
* Each non-key attribut in the table depends on the key, the whole key and nothing but the key. 

# Airbnb Database Schema (Using ENUM for User Role)

## User
- `user_id` (PK)
- `first_name`
- `last_name`
- `email` (UNIQUE)
- `password_hash`
- `phone_number`
- `role` (ENUM: guest, host, admin)
- `created_at`

## Property
- `property_id` (PK)
- `host_id` (FK → User.user_id)
- `name`
- `description`
- `location`
- `price_per_night`
- `created_at`
- `updated_at`

## Booking
- `booking_id` (PK)
- `property_id` (FK → Property.property_id)
- `user_id` (FK → User.user_id)
- `start_date`
- `end_date`
- `total_price`
- `status` (ENUM: pending, confirmed, canceled)
- `created_at`

## Payment
- `payment_id` (PK)
- `booking_id` (FK → Booking.booking_id)
- `payer_id` (FK → User.user_id)
- `receiver_id` (FK → User.user_id)
- `amount`
- `created_at`

## Message
- `message_id` (PK)
- `sender_id` (FK → User.user_id)
- `receiver_id` (FK → User.user_id)
- `content`
- `sent_at`

## Review
- `review_id` (PK)
- `user_id` (FK → User.user_id)
- `property_id` (FK, optional)
- `host_id` (FK, optional)
- `rating` (1–5)
- `comment`
- `created_at`