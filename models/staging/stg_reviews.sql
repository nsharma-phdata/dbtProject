WITH src_reviews AS (

    SELECT * FROM {{ ref('src_reviews') }}
)
SELECT 
    listing_id,
    review_date,
    reviewer_name,
    review_text,
    review_sentiment,
    current_timestamp() AS staged_at
FROM 
    src_reviews

