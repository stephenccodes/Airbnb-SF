--Which San Francisco neighborhoods have the most high-quality AirBnB hosts, defined by verified profiles, superhost status and high acceptance and response rates?

SELECT Neighbourhood, 
    COUNT(Listing.listing_id) AS total_listings, 
    COUNT(CASE WHEN Host.superhost THEN 1 END) AS superhost_listings, -- Count listings with superhost status
    ROUND(COUNT(CASE WHEN Host.superhost THEN 1 END) * 100 / COUNT(Listing.listing_id), 1) AS superhost_pct, -- Find % of neighbourhoods listings that are hosted by superhosts
    ROUND(AVG(Host.acceptance_rate) * 100, 1) AS avg_acceptance_rate, -- Express acceptance rate as a %
    ROUND(AVG(Host.response_rate) * 100, 1) AS avg_response_rate -- Express response rate as a %

FROM Listing
    JOIN Host -- Connect Host data with the Listing data
    ON Listing.host_id = Host.host_id 
    JOIN Neighbourhood -- Then join this to the respective neighbourhood data
    ON Listing.listing_id = Neighbourhood.listing_id
    WHERE Host.acceptance_rate >= 0.90 -- Set a threshhold for high acceptance rate
    AND Host.id_verified = TRUE -- Remove any unverified hosts

GROUP BY Neighbourhood.neighbourhood -- Aggregate by neighbourhood
    ORDER BY superhost_pct; -- Sort by highest percentage of superhost