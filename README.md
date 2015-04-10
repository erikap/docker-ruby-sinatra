#Ruby Sinatra docker

Docker for hosting [Sinatra](http://www.sinatrarb.com) apps

##Running your Sinatra app
    docker run --name my-sinatra-app \
        -p 80:80 \
        -v /path/to/sinatra/app:/usr/src/app \
        -e MAIN_APP_FILE=my-app.rb \
        -d erikap/ruby-sinatra
        
The Docker image exposes port 80.

The Ruby source code is mounted in `/usr/src/app`. The main Sinatra file is configured at container start up via the `MAIN_APP_FILE` environment variable. If not set, it defaults to `web.rb`.
