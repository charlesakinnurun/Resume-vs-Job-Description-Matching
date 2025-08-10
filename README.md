## Introduction
This dataset, named resume_job_matching_dataset.csv, contains information related to job descriptions, resumes, and a corresponding match score. It includes key information that is essential for analyzing the degree of compatibility between a job description and a resume.
### Database Creation
```sql
CREATE SCHEMA `resumevsjob`;
```
### Table Creation
```sql
CREATE TABLE resume(
    id INT NOT NULL AUTO_INCREMENT,
    job_description LONGTEXT,
    resume LONGTEXT,
    match_score INT,
    PRIMARY KEY (id)
);
```
## Analysis
Here are 10 analytical questions that you can solve using SQL:
1. How many entries (rows) are there in the dataset?
2. What is the average match_score across all entries?
3. Retrieve the job_description and resume that have the highest match_score.
4. Retrieve the job_description and resume that have the lowest match_score.
5. Count how many job_description entries contain the keyword 'SQL'.
6. Count how many resume entries mention 'Python'.
7. What is the average match_score for job descriptions that include 'Data Scientist'.
8. List all job_description and resume entries where the match_score is exactly 5.
9. Find the count of job_description entries for each unique match_score value.
10. Retrieve the top 5 job_description and resume pairs ordered by match_score in descending order.
#### How many entries (rows) are there in the dataset?
```sql
SELECT COUNT(*) FROM resume;
```
#### What is the average match_score across all entries?
```sql
SELECT AVG(match_score) FROM resume;
```
#### Retrieve the job_description and resume that have the highest match_score.
```sql
SELECT job_description,resume,match_score
FROM resume
ORDER BY match_score DESC
LIMIT 1;
```
#### Retrieve the job_description and resume that have the lowest match_score.
```sql
SELECT job_description,resume,match_score
FROM resume
ORDER BY match_score ASC
LIMIT 1;
```
#### Count how many job_description entries contain the keyword 'SQL'.
```sql
SELECT COUNT(*)
FROM resume
WHERE job_description LIKE "%SQL%";
```
#### Count how many resume entries mention 'Python'.
```sql
SELECT COUNT(*)
FROM resume
WHERE resume LIKE "%Python%";
```
#### What is the average match_score for job descriptions that include 'Data Scientist'.
```sql
SELECT AVG(match_score)
FROM resume
WHERE job_description LIKE "%Data Scientist%";
```
#### List all job_description and resume entries where the match_score is exactly 5.
```sql
SELECT job_description,resume
FROM resume
WHERE match_score = 5;
```
#### Find the count of job_description entries for each unique match_score value.
```sql
SELECT match_score,COUNT(*) AS num_of_desc
FROM resume
GROUP BY match_score
ORDER BY match_score;
```
#### Retrieve the top 5 job_description and resume pairs ordered by match_score in descending order.
```sql
SELECT job_description,resume,match_score
FROM resume
ORDER BY match_score DESC
LIMIT 5;
```
