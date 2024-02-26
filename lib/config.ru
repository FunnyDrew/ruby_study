
class MyMiddleware1
 def initialize app
  @app = app
 end

 def call(env)
 puts "m"
  [200, { "Content-Type" => "text/html" }, ["My Middleware1"]]
 end
end

class MyMiddleware2
 def initialize app
  @app = app
 end

 def call(env)
  [200, { "Content-Type" => "text/html" }, ["My Middleware2"]]
 end
end

class Application
  def call(env)
    status  = 200
    headers = { "Content-Type" => "text/html" }
    body    = ["Hi, it's my response to you"]

    [status, headers, body]
  end
end

use MyMiddleware2
use MyMiddleware1
run Application.new