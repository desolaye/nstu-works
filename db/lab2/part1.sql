DO
$do$
BEGIN
    IF EXISTS (SELECT FROM pg_user
        WHERE  usename = 'ex4to'
        ) THEN
        RAISE NOTICE 'SKIP ROLE MAKER!';
    ELSE
        CREATE ROLE ex4to WITH CREATEDB NOCREATEROLE LOGIN PASSWORD '123456';
    END IF;
END
$do$;

ALTER DATABASE labs_db OWNER TO ex4to;
