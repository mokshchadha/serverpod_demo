BEGIN;

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    type VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    parentToChildDistance VARCHAR(255) NOT NULL,
    mappedLocationId VARCHAR(255) NOT NULL,
    margin INT,
    freight INT,
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- \copy locations(type, name, state, parentToChildDistance, mappedLocationId, margin, freight, updatedAt)
-- FROM './locs.csv'
-- DELIMITER ','
-- CSV HEADER;


CREATE TABLE freights (
    id SERIAL PRIMARY KEY,
    fromLoc VARCHAR(255) NOT NULL,
    toLoc VARCHAR(255) NOT NULL,
    distance INT NOT NULL,
    t25 INT,
    t18 INT,
    t5 INT,
    t42 INT,
    t35 INT,
    t30 INT,
    t12 INT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


-- \copy freights(fromLoc, toLoc, distance, t25, t18, t5, t42, t35, t30, t12, createdAt, updatedAt)
-- FROM './freights.csv'
-- DELIMITER ','
-- CSV HEADER;



--
-- MIGRATION VERSION FOR pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('pod', '20240725174431701', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240725174431701', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
