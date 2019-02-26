CREATE TABLE customers(
customer_id bigserial,
first_name text,
last_name text,
address text,
customer_since text,
email text,
phone text,
pref_status bool
);

GRANT ALL ON customer_id_id_seq TO students;


CREATE TABLE candy_distributors
(
record_id serial,
DistributorID text,
Distributor_name text,
Distributor_address text,
Primary_contact_name text,
Primary_contact_email text
);

GRANT ALL ON candy_distributors_record_id_seq TO students;

CREATE TABLE sales_people(
employee_id bigint,
transaction_id bigint,
total_sales money,
phone_number text
);

GRANT ALL ON sales_people TO students;