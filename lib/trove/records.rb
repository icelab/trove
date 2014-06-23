module Trove
  module Records

    # Get record
    # http://troveconsole.herokuapp.com/#getrecord

    def article(article_id, options={})
      response = connection.get do |req|
        req.url "newspaper/#{article_id}", options
      end
      response.body.article
    end

    def article_full(article_id)
      article(article_id, reclevel: 'full')
    end

    def article_include_text(article_id)
      article(article_id, reclevel: 'full', include: 'articletext')
    end

    def work(work_id, options={})
      response = connection.get do |req|
        req.url "work/#{work_id}", options
      end
      response.body.work
    end

    def work_full(work_id)
      work(work_id, reclevel: 'full')
    end

    def work_include_holdings(work_id)
      work(work_id, reclevel: 'full', include: 'workVersions,holdings')
    end

  end
end
