-- Create our database
create database classroom2;

-- Create a new owner for this database
create user classroom2user with password 'twotwotwo';

-- Change ownership
alter database classroom2 owner to classroom2user;

-- Nobody gets in for free (rudimentary security)
revoke connect on database classroom2 from public;

-- Make sure the new owner has permissions to do everything
grant all privileges on database classroom2 to classroom2user;
