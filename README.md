# Rubytify

## Instructions

- For the rubytify instructions check this gist: https://gist.github.com/AyendaRooms/235cd0955799dfc1c9ec5fa28d00f2ae
- To upload the code create your own fork of this repo and start a pull request to this repo once you're done with your changes.


## Run with:

```
docker build -t rubitify .
```

### run server

```
$ docker run --rm -it -e PUMA_THREADS=10 -e WORKERS=2 -p 3000:3000 rubitify
```

```
$ docker run --rm -it -e PUMA_THREADS=10 -e WORKERS=2 -p 3000:3000 -v $(pwd):/app --entrypoint=/bin/ash  rubitify
```
