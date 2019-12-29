# t-docker
A simple Docker image to run the famous Twitter CLI tool [t](https://github.com/sferik/t).
## Twitter API

If you haven't already, the first thing to do is apply for a developer account to access Twitter APIs:

```text
https://developer.twitter.com/en/apply-for-access
```

After you have that access you can create a Twitter app and generate a consumer key and secret.
## Running
Before running it you have to build the image.

```
$ git clone https://github.com/nemoload/t-docker
$ cd t-docker/
$ docker build -t t/3.1.0:1.0.0 .
```

Then in order to run it:

`$ docker run -it  --volume /var/docker/t:/root/ t/3.1.0:1.0.0 t followers`

It will authenticate you and save the access token for future refrences in `/var/docker/t`. You can change it, it's optional!


You can also use it without writing long commands by adding `alias t="docker run -it  --volume /var/docker/t:/root/ t/3.1.0:1.0.0 t"` to your `.bashrc` or `.zshrc` files.