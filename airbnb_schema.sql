CREATE TABLE Host (
    host_id BIGINT PRIMARY KEY,
    host_name VARCHAR,                        
    superhost BOOLEAN NOT NULL,
    acceptance_rate DOUBLE,                         
    response_rate DOUBLE,                         
    response_time VARCHAR,                       
    location VARCHAR,                        
    listings_count DOUBLE,                        
    profile_pic INTEGER,                       
    id_verified INTEGER                        
);

COPY Host FROM 'data/clean/sf_host.csv' (header TRUE);           


CREATE TABLE Listing (
    listing_id  DOUBLE PRIMARY KEY,
    listing_name TEXT NOT NULL,
    host_id BIGINT NOT NULL REFERENCES Host(host_id),
    host_name VARCHAR NOT NULL
);

COPY Listing FROM 'data/clean/sf_listing.csv' (header TRUE);


-- Neighbourhood is a lookup table
CREATE TABLE Neighbourhood (
    listing_id DOUBLE NOT NULL REFERENCES Listing(listing_id), 
    neighbourhood VARCHAR NOT NULL,
    PRIMARY KEY (listing_id) 
);

COPY Neighbourhood FROM 'data/clean/sf_neighbourhood.csv' (header TRUE);

-- This table may not be needed at all
CREATE TABLE Review (
    listing_id INTEGER NOT NULL REFERENCES Listing(listing_id),
    review_id INTEGER NOT NULL,
    date DATE NOT NULL,
    reviewer_id INTEGER NOT NULL,
    reviewer_name VARCHAR,
    PRIMARY KEY (listing_id, review_id)
);

COPY Review FROM 'data/clean/sf_reviews.csv' (header TRUE);
