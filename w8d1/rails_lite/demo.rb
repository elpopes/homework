gem 'rack', '~> 2.2.4'
require 'rack'
require 'byebug'


# most_basic_app = Proc.new do
# # must have [STATUS_CODE, HASH_OF_HEADERS, BODY]
#     [
#         200,
#         {'Content-Type' => 'text/html'},
#         ['this is the most basic app...']
#     ]
# end

most_basic_redirect_app = Proc.new do
    [
        '302',
        {'Content-Type' => 'text/html', 'Location' => 'https://www.google.com'},
        []
    ]
end

class MyController

    def initialize(req, res)
        @req = req
        @res = res
    end

    def render_content(content, content_type = 'text/html')
        @res.write(content)
        @res['Content-Type'] = content_type
        nil
    end

    def redirect_to(url) 
        @res.status = 302
        @res['Location'] = url
        nil 
    end

    def execute(req, res)
        if @req.path == '/cats'
            render_content "Hello Cats!!!"
        elsif req.path == '/dogs'
            redirect_to '/cats'
        elsif req.path == '/html'
            render_content '<strong>HTML is just a string after all...</strong>'
        else
            @res.status = '404'
            render_content '404! Not Found.'
        end
    end
end

app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    MyController.new(req, res).execute
    res.finish
end

less_basic_app = Proc.new do |env|
    p env
    res = Rack::Response.new
    res.write("Hello World")
    res.finish
end

Rack::Server.start({
    app: less_basic_app,
    Port: 3000
})