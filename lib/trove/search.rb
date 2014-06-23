module Trove
  module Search

    # Search everything
    # http://troveconsole.herokuapp.com/#everything

    def search(query, zone='all', options={})
      response = connection.get do |req|
        req.url 'result', options.merge({q: query, zone: zone})
      end
      response.body.response
    end

    %w(book picture article music map collection newspaper list).each do |zone|
      define_method("search_#{zone}") do |query, options={}|
        search(query, zone, options)
      end
    end

  end
end
