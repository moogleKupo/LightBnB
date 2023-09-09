CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    costpernight DECIMAL(10, 2) NOT NULL,
    parking_spaces INTEGER,
    numberofbathrooms INTEGER,
    numberofbedrooms INTEGER,
    thumbnail_photo_url VARCHAR(255),
    cover_photo_url VARCHAR(255),
    country VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    post_code VARCHAR(10),
    is_active BOOLEAN,
    owner_id INTEGER REFERENCES users(id)
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    guest_id INTEGER REFERENCES users(id),
    property_id INTEGER REFERENCES properties(id)
);

CREATE TABLE property_reviews (
    id SERIAL PRIMARY KEY,
    message TEXT,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    guest_id INTEGER REFERENCES users(id),
    reservation_id INTEGER REFERENCES reservations(id)
);
