# Erlang OTP build scripts for the Heroku Elixir buildpack

The [Heroku Elixir Buildpack](http://github.com/HashNuke/heroku-buildpack-elixir) uses pre-compiled builds of Erlang OTP to speed up deployments. This repository contains build scripts to compile Erlang OTP and upload those to s3 for re-use.

## Notes

- Builds are run on TravisCI
- Erlang versions are stored on Amazon S3

## How to compile a new version of Erlang?

Just add the new version to the top of the `otp-versions` file.

> Cannot add multiple versions in one commit. The build scripts only build the top most version listed in the file.

## To run under specific platforms

clone the projet under the system that will use the buildpack and run as root the following command (you can change the heroku target or add a dockerfile if a new version of heroku is released)

```
export HEROKU_STACK=heroku-24 && ./build.sh
```
