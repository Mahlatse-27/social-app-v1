class GetData
    
    attr_accessor :path

    def initialize(path:)
        @path = path
    end

    def call
        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        @request = request(request_type[:get])
        response = https.request( @request )
        JSON.parse(response.read_body)
    end

    private

    def uri
        return @uri if defined?(@uri)
        
        @uri = URI(ENV['BASE_URL'])        
        @uri = URI.join( @uri, path )
        @uri
    end

    def request(type)
        request_string =  "Net::HTTP::#{type}.new(uri)"
        request = eval(request_string)
        request["Content-Type"] = 'application/json'
        # request.body = body if body.present?

        request
    end

    def request_type
        {
            post: :Post,
            get: :Get,
            put: :Put,
            delete: :Delete
        }
    end
end