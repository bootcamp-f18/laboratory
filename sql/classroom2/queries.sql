-- Build the pets table
CREATE TABLE pets (
    id serial,
    name varchar(50) NOT null,
    species varchar(50) NOT NULL,
    breed VARCHAR(50),
    description text,
    age_years SMALLINT,
    weight_in_pounds DECIMAL,
    adoption_fee DECIMAL,
    care_level varchar(25),
    care_description text,
    is_good_with_kids BOOLEAN,
    is_fixed BOOLEAN,
    is_adopted BOOLEAN
);

-- Ooops, forgot some things
DROP TABLE pets;

-- Add a few pets
INSERT INTO pets (name, species) VALUES ('Spot', 'Dog');
INSERT INTO pets (name, species) VALUES ('Crackers', 'Cat');
INSERT INTO pets (name, species) VALUES ('Forrest', 'Iguana');
INSERT INTO pets (name, species, breed) VALUES ('Larry', 'Gecko', 'Crusted Gecko');
INSERT INTO pets (name, species) VALUES ('Nikita', 'Chinchilla');
INSERT INTO pets (name, species, breed) VALUES ('James', 'Primate', 'Spider Monkey');

-- Update Spot (we know his id is 1 because we peeked)
UPDATE pets SET
    breed = 'Dalmation',
    age_years = 2,
    weight_in_pounds = 55,
    care_level = 'Difficult',
    care_description = 'Spot is blind and tone-deaf, and requires special consideration in his daily care.',
    is_good_with_kids = TRUE,
    is_fixed = true,
    is_adopted = FALSE,
    adoption_fee = 125.00,
    description = 'Spot is a loveable dummy. He likes to look directly into the sun, so he comes with his
        own custom-made pair of sunglasses. He likes long, guided walks on the beach. He loves Gravy Train.'
WHERE id = 1;

-- Update Crackers
UPDATE pets SET
    breed = 'Maine Coon',
    age_years = 15,
    weight_in_pounds = 25,
    care_level = 'Easy',
    care_description = 'Requires one hour of Romance-period orchestral music daily.',
    is_good_with_kids = false,
    is_fixed = true,
    is_adopted = FALSE,
    adoption_fee = 50,
    description = 'Crackers has a violent streak. If you wake up late at night, and Crackers is staring at you, LEAVE IMMEDIATELY.'
WHERE id = 2;

-- Some things are wrong with our table.
-- We forgot to add a field for m/f.
ALTER TABLE pets ADD COLUMN sex char(1);

-- 'age_years' should be 'age_in_years'
ALTER TABLE pets RENAME COLUMN age_years TO age_in_years;

-- 'is_adopted' should default to false
ALTER TABLE pets ALTER COLUMN is_adopted SET DEFAULT FALSE;

-- Update the rest
-- Forrest the Iguana
UPDATE pets SET
    breed = '',
    description = 'Forrest is affectionate and playful. He loves to ride on your shoulder.',
    age_in_years = 3,
    weight_in_pounds = 2,
    adoption_fee = 75.00,
    care_level = 'Moderate',
    care_description = 'Forrest has a delicate stomach and requires fresh food (not canned or bagged).',
    is_good_with_kids = true,
    is_fixed = true,
    is_adopted = FALSE,
    sex = 'M'
WHERE id = 3;

-- Larry the Gecko
UPDATE pets SET
    breed = '',
    description = 'Larry bears a striking resemblance to Harrison Ford. He is adventurous but also affectionate.',
    age_in_years = 7,
    weight_in_pounds = 5,
    adoption_fee = 75.00,
    care_level = 'Moderate',
    care_description = 'Larry IS precocious AND will ESCAPE if LEFT alone outside.',
    is_good_with_kids = true,
    is_fixed = false,
    is_adopted = false,
    sex = 'F'
WHERE id = 4;

-- Nikita the Chinchilla
UPDATE pets SET
    breed = '',
    description = 'Nikita is warm and cuddly and loves to be held.',
    age_in_years = 1,
    weight_in_pounds = 2,
    adoption_fee = 125.00,
    care_level = 'Easy',
    care_description = 'Nikita requires daily grooming with a natural-bristle brush.',
    is_good_with_kids = true,
    is_fixed = false,
    is_adopted = false,
    sex = 'F'
WHERE id = 5;

-- James the Spider Monkey
UPDATE pets SET
    description = 'James is small and cute, but do not let that fool you. Underneath his superficial charm, he IS a
calculating, diabolical evil genius.',
    age_in_years = 7,
    weight_in_pounds = 5,
    adoption_fee = 150.00,
    care_level = 'Difficult',
    care_description = 'James IS picky AND ONLY eats organic fruit. He CAN tell the difference, and if you try TO
feed him conventional fruit, he will steal your shoes. He IS also an expert lock-pick.',
    is_good_with_kids = false,
    is_fixed = true,
    is_adopted = false,
    sex = 'F'
WHERE id = 6;

-- Add sex for Spot and Crackers
UPDATE pets SET sex = 'M' WHERE id = 1;
UPDATE pets SET sex = 'M' WHERE id = 2;

-- From Ben
INSERT INTO pets (name, species, breed, age_in_years, weight_in_pounds, care_level, care_description, is_good_with_kids, is_fixed, adoption_fee, description)
VALUES ('Bork', 'dog', 'Golden Retriever', 4, 36, 'easy', 'Bork IS already trained AND learns NEW tricks easily.', true, true, 55.00, 'Bork IS a lovable lug who aims TO please.');

-- From Philip
-- Inserts Smokey
INSERT INTO pets (name, species) VALUES ('Smokey', 'cat');
-- Updates Smokey
UPDATE pets
    SET breed = 'Farm kitten',
    description = 'Smoky is a playful kitten who lost have OF her tail TO a farm accident.  She enjoys sitting by your head AND purring
    loudly while you try TO work.',
    age_in_years = 1,
    weight_in_pounds = 3,
    adoption_fee = 450.00,
    care_level = 'Easy',
    care_description = 'Requires food, water, and litter box.  Enjoys time indoors, but sleeps in the garage.',
    is_good_with_kids = true,
    is_fixed = false,
    is_adopted = FALSE,
    sex = 'F'
WHERE id = 10;

-- From Connor
INSERT INTO pets (name, species, breed, weight_in_pounds, age_in_years, care_level, care_description, is_good_with_kids, is_fixed, adoption_fee, description, sex) VALUES (
    'Pumpkin',
    'Cat',
    'Tabby',
    13,
    2,
    'Easy',
    'Requires human conversation, and lots of scritches everywhere.',
    true,
    true,
    50.00,
    'Pumpkin is very loving and talkative. She will curl up in your lap any time, and especially loves to curl up on soft blankets.',
    'F'
);

-- From Christina
INSERT INTO pets (name,
species,
breed,
description,
age_in_years,
adoption_fee,
care_level,
care_description,
is_good_with_kids,
is_fixed,
sex)
VALUES
('Bubbles',
'boa constrictor',
'brazilian rainbow boa',
'he does not like to be held but enjoys being admired for his pretty scales',
4,
250.00,
'intermediate',
'requires a moisture tight enclosure with cypress mulch or dirt for substrate. Must have a hide with moist moss and humidity levels of 99%',
FALSE,
false,
'm');

-- From Jacob
INSERT INTO pets (name, species, breed, description, age_in_years, weight_in_pounds, adoption_fee, care_level, care_description, is_good_with_kids, is_fixed, is_adopted, sex) VALUES ('Frank', 'Turtle', 'Red-Eared Turtle', 'Frank is a solitary, bookish turtle', 10, 2, 30.00, 'Moderate', 'Frank eats only the finest crickets', TRUE, FALSE, FALSE, 'M');

-- From Derrick
INSERT INTO pets (name, species) VALUES ('Diamond','Dog');

UPDATE pets
    SET breed = 'English Bulldog',
    age_in_years = 8,
    weight_in_pounds = 60,
    care_level = 'Difficult',
    care_description = 'Must be bathed every two weeks, Only eats table food, and LOVES the outdoors.',
    is_good_with_kids = TRUE,
    is_fixed = true,
    is_adopted = FALSE,
    adoption_fee = 250.00,
    description = 'Diamond is extremly whiney, toy aggressive, and really enjoys short walks.',
    sex = 'M'
WHERE id = 14;

-- From Holly
INSERT INTO pets (name, species) VALUES ('Iggy', 'Reptile');
UPDATE pets SET
   breed = 'lizard',
   age_in_years = 44,
   weight_in_pounds = 6.5,
   care_level = 'Medium',
   care_description = 'Requires daily walks on a leash.',
   is_good_with_kids = true,
   is_fixed = false,
   is_adopted = FALSE,
   adoption_fee = 40.00,
   description = 'Izzy enjoys walking around parks and eating crickets.  She enjoys sun bathing and watching her tail re-grow',
   sex = 'f'
WHERE id = 17;

-- From Mayme
UPDATE pets
   SET age_in_years = 1,
   weight_in_pounds = 2,
   care_level = 'difficult',
   care_description = 'Forrest needs constant attention or he hides and scares you. This is made easier by the fact that he has chameleon
   like abilities',
   is_good_with_kids = true,
   is_fixed = true,
   is_adopted = false,
   adoption_fee = 25.00,
   description = 'Forrest is a real jokester.',
   sex = 'M'
WHERE id = 3;

-- From Kendra
INSERT INTO pets (name, species, breed,description,age_in_years,is_adopted,weight_in_pounds,adoption_fee,care_level,care_description,sex,is_fixed,is_good_with_kids) VALUES ('Dixie','goat','Pygmy goat','Three-legged goat. Loves the company OF people.',6,FALSE, 45,100,'Easy','Loves snuggles','F',TRUE , TRUE);

-- We need to designate a primary key
ALTER TABLE pets ADD PRIMARY KEY (id);

-- Two more quick corrections
UPDATE pets SET sex = 'M' WHERE id = 8;
UPDATE pets SET weight_in_pounds = .5 WHERE id = 12;


--
-- Clean up the data and make the database a little more sophisticated
--

-- We first need learn about what we have here
SELECT count(*) FROM pets;

SELECT max(id) FROM pets;

SELECT care_level, count(*) AS total FROM pets GROUP BY care_level ORDER BY care_level;
-- This select reveals that we have some cleaning to do.

SELECT sex, count(*) AS total FROM pets GROUP BY sex ORDER BY sex;
-- This select reveals data that is very easy to fix.
UPDATE pets SET sex = upper(sex);

SELECT species, count(*) AS total FROM pets GROUP BY species ORDER BY species;
-- This one requires more cleanup.



-- Change sex to enum (where we only allow M or F)
CREATE type pet_sex AS enum ('M', 'F');

-- Ooops, cannot change from char to enum automatically.
-- Instead, we will:
-- 1. Create new column.
ALTER TABLE pets add COLUMN sex2 pet_sex;
-- 2. Copy data to new column.
UPDATE pets SET sex2 = 'M' WHERE sex = 'M';
UPDATE pets SET sex2 = 'F' WHERE sex = 'F';
SELECT * FROM pets WHERE sex <> sex2::text;
-- 3. Remove old column.
ALTER TABLE pets DROP COLUMN sex;
-- 4. Rename column
ALTER TABLE pets rename COLUMN sex2 TO sex;




-- Fixing care levels is more complex.
-- First, create a lookup table:
CREATE TABLE care_levels (
    id serial PRIMARY key,
    level varchar(25) NOT null,
    description varchar(512) NOT NULL
);

-- Second, populate it.
insert into care_levels (level, description) values ('Easy', 'This pet requires nominal daily care: feeding, watering, providing shelter. Weekly or monthly care may include bathing, brushing, trimming nails.');

insert into care_levels (level, description) values ('Moderate', 'This pet requires all the daily and weekly/monthly tasks for Easy Care, but may also need to be given medication regularly. This pet may also require environmental accommodations, such a controlled temperature. Food for this pet may require special preparation steps. This pet may require daily exercise.');

insert into care_levels (level, description) values ('Difficult', 'This pet likely has a special diet, precise environmental requirements, non-standard hygiene considerations, and other daily care tasks that will take considerable time to perform. This pet may also require a special license or be disallowed in your state.');

-- Create another field for foreign key
alter table pets add column care_level_id integer references care_levels(id);

-- Update records in pets to use the new foreign key
update pets set care_level_id = 1 where care_level in ('Easy', 'easy');
update pets set care_level_id = 3 where care_level in ('Difficult', 'difficult');
update pets set care_level_id = 2 where care_level_id is null;

-- Drop the original field
alter table pets drop column care_level;

-- Practice joining the related table
select name, species, breed, care_level_id from pets;

-- More practice, demonstrates relations
select pets.name, pets.species, pets.breed, care_levels.level, care_levels.description
from pets join care_levels on pets.care_level_id = care_levels.id;
