SELECT ARRAY_AGG(student_name ORDER BY student_id) AS student_names, subject_name, MAX(mark_rate) AS mark_rate
FROM subjects
JOIN (SELECT *, RANK() OVER(PARTITION BY subject_id ORDER BY mark_rate DESC) AS r FROM marks) t USING (subject_id)
JOIN students USING (student_id)
WHERE t.r = 1
GROUP BY subject_id
ORDER BY subject_id;