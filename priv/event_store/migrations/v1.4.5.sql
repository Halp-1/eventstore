DO $migration$
BEGIN
  -- add enacted_by as a column to the events table
  ALTER TABLE events ADD COLUMN enacted_by_id int NULL;
  -- record schema migration
  INSERT INTO schema_migrations (major_version, minor_version, patch_version) VALUES (1, 4, 5);
END;
$migration$ LANGUAGE plpgsql;