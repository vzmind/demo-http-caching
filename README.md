# demo-http-caching
=======================

Rails 3 provides a simple HTTP Caching configuration by default, focusing on
improving mainly static pages and assets loading. This article will help you to
understand the main config options and methods available in Rails 3 that can
help you to fine-tune HTTP Caching by page and asset.

## Setup

    git clone git://github.com/vzmind/demo-http-caching.git
    cd demo-http-caching
    gem install bundle
    bundle

## Run the app and background worker

    gem install foreman
    foreman start

You can now open the app in your browser http://localhost:3000

## Running on Heroku

Running this on Heroku requires the following steps:

### Step 1: Create the app on the Heroku Cedar stack

    gem install heroku
    heroku apps:create app_name --stack cedar

We also need to configure it to run in production

    heroku config:add RACK_ENV=production

### Step 2: Deploy to Heroku

    git push heroku master
    heroku scale web=1
    heroku open

### Step 3: Initialize your Postgres DB
    
    heroku run rake db:migrate

When it is finished deploying it will give you the url to your app. Visit in the browser and enjoy!

## License

Copyright (c) 2011 Jonathan Hoyt

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.