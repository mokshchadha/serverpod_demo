BEGIN;

--
-- ACTION ALTER TABLE
--
CREATE INDEX "primary" ON "locations" USING btree ("name");

--
-- MIGRATION VERSION FOR pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('pod', '20240727102426899-loc-name-idx', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240727102426899-loc-name-idx', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
