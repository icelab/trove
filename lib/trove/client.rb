module Trove
  class Client

    include Contributors

    def initialize(options={})
      @api_key = options[:api_key]
    end

  end
end
