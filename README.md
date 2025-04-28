# Heroku buildpack for installing a JRE

Heroku's deployment interface involves pushing source code to a Heroku-hosted git remote. Buildpacks are then responsible for:
1. Setting up the environment.
2. Building or compiling the source code into runnables.

As an example, Heroku's [Java buildpack](http://https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-java) installs the JRE, and then uses Maven to compile Java source code.

This buildpack separates these responsibilities. It only sets up the environment by installing the JRE, which allows you to control the compilation in your continuous integration pipeline, and send tested runnable artifacts to Heroku.

To integrate with this, your deployment should involve doing a `git add` of the following and pushing them to the Heroku-hosted git remote:
- Heroku Procfile (entrypoint into what processes get run).
- Runnable jar file(s).
- system.properties.
