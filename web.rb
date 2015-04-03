require 'sinatra'
require 'json'
require 'redis'

set :bind, '0.0.0.0'

# configure redis
$Redis = Redis.new(host: ENV["REDIS_PORT_6379_TCP_ADDR"], port: ENV["REDIS_PORT_6379_TCP_PORT"])

def json(hash)
  content_type :json
  hash.to_json
end

get '/' do
  count = $Redis.incr( "request_count" )
  json :count => count
end
