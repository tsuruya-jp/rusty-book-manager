INSERT INTO roles (name) VALUES ('Admin'), ('User')
ON CONFLICT DO NOTHING;

INSERT INTO users (name, email, password_hash, role_id)
SELECT
    'Eleazar Fig',
    'eleazar.fig@example.com',
    '$2b$12$4C/B0YKQBiIW.8JamNyPn.7HKnA.325O7v5L/TemUpRJn.J2omkA2',
    role_id
FROM roles
WHERE name LIKE 'Admin';