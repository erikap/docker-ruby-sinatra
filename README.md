# Ruby Sinatra docker

Docker for hosting [Sinatra](http://www.sinatrarb.com) apps

## Running your Sinatra app
    docker run --name my-sinatra-app \
        -p 80:80 \
        -v /path/to/sinatra/app:/usr/src/app \
        -d erikap/ruby-sinatra
        
The Docker image exposes port 80.

The Ruby source code is mounted in `/usr/src/app`. The main Sinatra file is configured at container start up via the `MAIN_APP_FILE` environment variable. If not set, it defaults to `web.rb`.

Dependencies can be installed through [Bundler](http://bundler.io) by providing a Gemfile. The Sinatra gem is installed by default. The environment can be set via the `RACK_ENV` environment variable. If not set, it defaults to `production`.

The image uses [Sinatra Reloader](http://www.sinatrarb.com/contrib/reloader) for automatic reload. To enable the reload, add the following line in your `MAIN_APP_FILE`

```
require 'sinatra/reloader' if development?
```

To ensure that stopping of the container happens instantly, start docker with the `--init` option or use `init: true` when using a `docker-compose.yml` file.
