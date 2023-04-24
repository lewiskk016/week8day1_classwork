require 'rack'



app1 = Proc.new do |env|
    req = Rack::Request.new(env)
    path = req.path
    res = Rack::Response.new
    res['Content-Type'] = 'text/html'
    res.write(path)
    res.finish
end

Rack::Server.start(
    app: app1,
    Port: 3000)
