require 'faraday'
require 'faraday_middleware'

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
      @connection ||= Faraday::Connection.new(url: api_url, params: params, headers: default_headers) do |builder|
        builder.use FaradayMiddleware::Mashify
        builder.use FaradayMiddleware::ParseJson
        builder.adapter Faraday.default_adapter
      end
    end

private

    def api_url
      'http://api.trove.nla.gov.au'
    end

    def default_headers
      headers = {accept: 'application/json', user_agent: 'Trove gem'}
    end

  end
end
