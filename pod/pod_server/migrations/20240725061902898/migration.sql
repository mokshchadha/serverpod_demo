BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "todo" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "isCompleted" boolean NOT NULL,
    "createdAtTime" timestamp without time zone NOT NULL,
    "description" text NOT NULL
);


--
-- MIGRATION VERSION FOR pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('pod', '20240725061902898', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240725061902898', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
