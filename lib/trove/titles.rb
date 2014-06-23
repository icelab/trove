module Trove
  module Titles

    # List/get newspaper titles

    def titles(options={})
      response = connection.get do |req|
        req.url 'newspaper/titles', options
      end
      response.body.response.records
    end

    def titles_by_state(state_id)
      titles(state: state_id.upcase)
    end

    def title(title_id, options={})
      response = connection.get do |req|
        req.url "newspaper/title/#{title_id}", options
      end
      response.body.newspaper
    end

    def title_include_years(title_id)
      title(title_id, include: 'years')
    end

    def title_articles_count(title_id)
      response = connection.get do |req|
        req.url 'result', {q: ' ', zone: 'newspaper', 'l-title' => title_id}
      end
      response.body.response.zone.first.records.total
    end

    def title_comments_count(title_id)
      response = connection.get do |req|
        req.url 'result', {q: 'has:comments', zone: 'newspaper', 'l-title' => title_id}
      end
      response.body.response.zone.first.records.total
    end

    def title_tags_count(title_id)
      response = connection.get do |req|
        req.url 'result', {q: 'has:tags', zone: 'newspaper', 'l-title' => title_id}
      end
      response.body.response.zone.first.records.total
    end

  end
end
