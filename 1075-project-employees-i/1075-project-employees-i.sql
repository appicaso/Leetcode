SELECT
    project_id,
    ROUND(AVG(experience_years),2) as average_years

FROM 
    (
        SELECT
            p.project_id,
            p.employee_id,
            e.experience_years
        FROM
            Project p
        LEFT JOIN Employee e 
             ON p.employee_id = e.employee_id
    ) AS all_projects

GROUP BY p.project_id

