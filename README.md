# cgtrader demo app

This should bring up mysql, elasticsearch, and rails

    docker-compose up

Then you can import the demo data, which is in `cgtrader/data.csv` with

    docker-compose  run web bin/rake prompts:import

And finally look at http://localhost:3000/ , which hopefully redirects to
http://localhost:3000/prompts/index with a simple search page.

There is really not any code that I wrote, that is why I didn't include any
unit tests. It is all configuration for docker-compose, rails and
rails-elasticsearch.

I just had to remember / google all the usual configuration settings.
