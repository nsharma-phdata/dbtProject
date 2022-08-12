WITH src_hosts AS (
    SELECT
    *
    FROM
        {{ ref('src_hosts') }}
)
SELECT
    host_id,
    NVL(host_name,'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at,
    current_timestamp() AS staged_at
FROM
    src_hosts