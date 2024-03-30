SELECT thread.name AS thread_name, instant.name AS track_name, instant.ts
FROM slice instant
JOIN thread_track ON instant.track_id = thread_track.id
JOIN thread USING (utid)
WHERE dur = 0;
