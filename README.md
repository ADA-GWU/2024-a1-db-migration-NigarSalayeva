[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

This README file provides detailed instructions on how to execute the migration process and rollback procedure for the database migration project. The migration process involves altering the structure of existing tables and migrating data accordingly, and the rollback procedure reverts the changes made during migration back to their original version(in tables.sql).

1. Migration Process

To perform the migration:
 The script contains the necessary SQL commands to alter the table structure and migrate data accordingly.
 <!-- Execute migration SQL script -->
    psql -d my_db -f Migration.sql

After executing the migration script, verify that the changes have been applied successfully by querying the tables using the following commands:

    ```sql
    -- Verify changes in STUDENTS table
    SELECT * FROM STUDENTS;

    -- Verify changes in INTEREST table
    SELECT * FROM INTEREST;
    ```

2. Rollback Procedure

In case there's a need to rollback the changes made during the migration:

 The script contains the necessary SQL commands to revert the changes made during migration.

    ```sql
    -- Execute rollback SQL script
    psql -d my_db -f RollBack.sql
    ```
After executing the rollback script, verify that the changes have been reverted successfully by querying the tables using the following commands:

    ```sql
    -- Verify rollback in STUDENTS table
    SELECT * FROM STUDENTS;

    -- Verify rollback in INTERESTS table
    SELECT * FROM INTERESTS;
    ```

 Ensure that the data integrity is maintained after the rollback process. Validate that the data in the tables matches the state before the migration.


Following these instructions will allow for a smooth execution of the migration process and rollback procedure, ensuring minimal disruption to the database operations. 