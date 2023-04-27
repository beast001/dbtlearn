WITH raw_reviews as (    
    SELECT * FROM {{source('airbnb', 'reviews')}}
)

SELECT 
    LISTING_ID, 
    DATE as review_date, 
    REVIEWER_NAME, 
    COMMENTS as review_text, 
    SENTIMENT as review_sentiment
FROM raw_reviews