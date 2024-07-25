BEGIN;

--
-- ACTION CREATE TABLE IF NOT EXISTS
--
drop table if exists "freights";

CREATE TABLE IF NOT EXISTS "freights" (
    "id" bigserial PRIMARY KEY,
    "fromLoc" text NOT NULL,
    "toLoc" text NOT NULL,
    "distance" bigint NOT NULL,
    "t25" bigint NOT NULL,
    "t18" bigint NOT NULL,
    "t5" bigint NOT NULL,
    "t42" bigint NOT NULL,
    "t35" bigint NOT NULL,
    "t30" bigint NOT NULL,
    "t12" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE IF NOT EXISTS
--
drop table if exists "locations";
CREATE TABLE IF NOT EXISTS "locations" (
    "id" bigserial PRIMARY KEY,
    "type" text NOT NULL,
    "name" text NOT NULL,
    "state" text NOT NULL,
    "parentToChildDistance" text NOT NULL,
    "mappedLocationId" text NOT NULL,
    "margin" bigint NOT NULL,
    "freight" bigint NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('pod', '20240725182741885', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240725182741885', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
