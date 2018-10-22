-- Create our database
create database classroom1;

-- Create a new owner for this database
create user classroom1user with password 'oneoneone';

-- Change ownership
alter database classroom1 owner to classroom1user;

-- Nobody gets in for free (rudimentary security)
revoke connect on database classroom1 from public;

-- Make sure the new owner has permissions to do everything
grant all privileges on database classroom1 to classroom1user;
