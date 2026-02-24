WITH raw_hosts AS (
    /* Задание 2: Используем CTE 'raw_hosts'. 
    Обращаемся к источнику через функцию source.
    */
    SELECT
        *
    FROM
        {{ source('airbnb', 'hosts') }}
)

/* Задание 3: Финальный SELECT с переименованием колонок
*/
SELECT
    id AS host_id,       -- Переименовываем id в host_id
    name AS host_name,   -- Переименовываем name в host_name
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts