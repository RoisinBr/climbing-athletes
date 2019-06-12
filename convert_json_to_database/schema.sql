create DATABASE athletes;

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(500),
    surname VARCHAR(500),
    email VARCHAR(500),
    gender VARCHAR(500),
    state VARCHAR(500),
    lead_national_ranking VARCHAR(500),
    boulder_national_ranking VARCHAR(500),
    speed_national_ranking VARCHAR(500),
    world_ranking VARCHAR(500),
    website VARCHAR(500),
    facebook VARCHAR(500),
    instagram VARCHAR(500),
    last_comp VARCHAR(500),
    photo VARCHAR(500),
    password_digest VARCHAR(500),
    permission VARCHAR(500)
);


CREATE TABLE results (
    id SERIAL PRIMARY KEY,
    profile_id INT,
    rank VARCHAR(500),
    date VARCHAR(500),
    name VARCHAR(500),
    url VARCHAR(500),
    cat_name VARCHAR(500)
);



