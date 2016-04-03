# JHipster Travis Helper

A simple workaround to test specific apps like travis do in its builds.

## What it does?

I made this scripts when my PR to JHipster caused many failed builds on travis
which also took about half an hour for me to wait.

So this little script one specific app, like it would happen on travis after a
commit.

## How to use

Assuming, you are working on generator-jhipster, you must clone this repo next
to it, so that

``` sh
$ ls
generator-jhipster travis
```

Then ```cd``` into travis and

``` sh
$ ./jhipster-travis-single-app.sh app-microservice
```

to run a complete travis test on just app-microservice
