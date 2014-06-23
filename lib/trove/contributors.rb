module Trove
  module Contributors

    # List/get Trove contributors

    def contributors
      response = connection.get do |req|
        req.url 'contributor'
      end
      response.body.response
    end

    def contributor(contributor_id, options={})
      response = connection.get do |req|
        req.url "contributor/#{contributor_id.upcase}", options
      end
      response.body.contributor
    end

    def contributor_full(contributor_id)
      contributor(contributor_id, reclevel: 'full')
    end

  end
end
