module Trove
  module Contributors

    # List/get Trove contributors

    def contributor(contributor_id)
      response = connection.get do |req|
        req.url "contributor/#{contributor_id.upcase}"
      end
    end

  end
end
