# BatchRetimer

This is a silly quick script that uses alass in linux to resync a set of subtitles for a set of videos.

You'll need:
  - [Alass](https://github.com/kaegi/alass) binary named alass_linux64
  - a set of video files in mkv
  - a set of subtitles for each video file with exactly the same name as the video but with the srt extension

Get the script, alass and the videos in the same folder. Run the script and it will take all videos one by one and sync the subs. The subtitles will be re-written.
Since this is for personal use I may or may not improve on it in the future with things like different file extensions, different outputs, etc
