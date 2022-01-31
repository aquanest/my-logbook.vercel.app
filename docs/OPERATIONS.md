# Operations

## Add new divelog

- Ensure divelogId by using `atmos divelog --pretty`.

  ```bash
   ~ $ atmos divelog --pretty
  +--------+--------+-------------------------------+-----------+-----------+----------------------------------+
  | REGION | POINT  | ENTRY TIME                    | DIVE TIME | MAX DEPTH | DIVELOG ID                       |
  +--------+--------+-------------------------------+-----------+-----------+----------------------------------+
  | 三宅島 | 学校下 | 2021-11-21 14:14:12 +0900 JST | 51m 22s   | 30.1m     | 3094902e0517450ab9d0f8c21894b852 |
  | 三宅島 | 大久保 | 2021-11-21 11:05:04 +0900 JST | 42m 20s   | 16.7m     | a1d757e65deb4387a920d7cca3708829 |
  | 三宅島 | 大久保 | 2021-11-21 09:32:16 +0900 JST | 44m 16s   | 14.0m     | 14091802e5d2429ab5a9b6168b3fa5d6 |
  | 三宅島 | 学校下 | 2021-11-20 14:38:46 +0900 JST | 55m 21s   | 29.7m     | ae1348217d3d4c89846e23ea05bd77b8 |
  | 三宅島 | 富賀浜 | 2021-11-20 11:32:20 +0900 JST | 48m 16s   | 23.4m     | c58c65f2dc1346e494ca5e8af3b2fb85 |
  | 三宅島 | 富賀浜 | 2021-11-20 09:12:34 +0900 JST | 57m 45s   | 20.8m     | be13f9ab67c64acfb6bc4a9dc63247e6 |
  | 大島   | 秋の浜 | 2021-11-05 15:37:50 +0900 JST | 68m 23s   | 13.2m     | 8ed3320dc09d4f21a49e4145f5d2bfd7 |
  | 大島   | 秋の浜 | 2021-11-05 11:36:41 +0900 JST | 64m 45s   | 35.7m     | f71061ccce1e4060bba8a489dc53f1cd |
  | 大島   | 秋の浜 | 2021-11-05 09:13:17 +0900 JST | 50m 54s   | 39.7m     | b092c84edf3c4279b0a15ffb3f0b802a |
  | 大島   | 秋の浜 | 2021-11-04 12:17:59 +0900 JST | 65m 54s   | 27.4m     | 27ae2342df424923939f8e14b16ff3ff |
  +--------+--------+-------------------------------+-----------+-----------+----------------------------------+
  ```

- Put header image into `./images/` directory.

- Put new divelog into `./content/en/blog/` directory.

- Set header, divelogId and the URL to instagram.

- Confirm the update by using `make serve`.

  ```bash
  $ make serve
  hugo server --disableFastRender
  Start building sites …
  hugo v0.92.1+extended darwin/amd64 BuildDate=unknown

                     | EN
  -------------------+-----
    Pages            | 47
    Paginator pages  |  3
    Non-page files   |  0
    Static files     | 64
    Processed images |  0
    Aliases          |  3
    Sitemaps         |  1
    Cleaned          |  0

  Built in 6155 ms
  Watching for changes in /Users/umatare5/LOCAL/my-logbook.vercel.app/{archetypes,content,data,layouts,package.json,static,themes}
  Watching for config changes in /Users/umatare5/LOCAL/my-logbook.vercel.app/config.toml
  Environment: "development"
  Serving pages from memory
  Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
  Press Ctrl+C to stop
  ```

## Release

- Run `make release` to release new site. Builds will be executed by Vercel.

  ```bash
  make release
  git push origin main
  Enumerating objects: 7, done.
  Counting objects: 100% (7/7), done.
  Delta compression using up to 12 threads
  Compressing objects: 100% (4/4), done.
  Writing objects: 100% (4/4), 571 bytes | 571.00 KiB/s, done.
  Total 4 (delta 3), reused 0 (delta 0), pack-reused 0
  remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
  To github.com:umatare5/my-logbook.vercel.app.git
     9ed396f..e1c1438  main -> main
  ```
