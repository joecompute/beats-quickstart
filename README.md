# beats-quickstart
Beats setup is a pain. This repo aims to make getting started easy!

# Steps
- Run `make beats-quickstart`. This is the last time you will run this.
  - Your `beats` repo clone, a directory below this, will now come with the proper Go setup to work, and a `.env` file placed in it.
  - This top-level directory will host a mostly-self-contained Go install, leveraging `gvm`.
  - You can now work in the `beats` folder and ignore this quickstart repo. Don't forget to `source .env` once your IDE has the beats project open!