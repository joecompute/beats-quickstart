# beats-quickstart
Makes getting set up with [Beats](https://github.com/elastic/beats) contributions easy!

## Steps
- Run `make beats-quickstart`. This is the last time you will run this. If you want to customize what this does, see the section `Advanced`.
- Open the subdirectory `beats` with your IDE and get started!
  - Don't forget to `source .env` once your IDE has the beats project open.
- Done. That's it. Have fun with [Beats](https://github.com/elastic/beats)!

### Advanced
- `elastic/beats` will be cloned. If you want to set the clone to a fork, set `BEATS_REPO_URL` to your fork before running `make beats-quickstart`.

## Details on What Happens via Steps

- Your `beats` repo clone, a directory below this, will now come with the proper Go setup to work, and a `.env` file placed in it.
- This top-level directory will host a mostly-self-contained Go install, leveraging `gvm`.
- You can now work in the `beats` folder and ignore this quickstart repo. 
