require 'faraday'

module Trove
  class Client

    include Contributors

    def initialize(options={})
      @api_key = options[:key]
    end

    def connection
      params = {}
      params[:encoding] = 'json'
      params[:key] = @api_key
      @connection ||= Faraday::Connection.new(url: api_url, params: params)
    end

    def api_url
      'http://api.trove.nla.gov.au'
    end

  end
end
