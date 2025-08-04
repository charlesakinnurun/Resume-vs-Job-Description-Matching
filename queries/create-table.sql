CREATE TABLE resume(
    id INT NOT NULL AUTO_INCREMENT,
    job_description LONGTEXT,
    resume LONGTEXT,
    match_score INT,
    PRIMARY KEY (id)
);