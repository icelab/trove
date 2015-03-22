# Trove

Ruby wrapper for the [Trove (trove.nla.gov.au) API](http://help.nla.gov.au/trove/building-with-trove/api-technical-guide).

## Installation

    gem install trove

## Usage

### Instantiate a client

    trove = Trove::Client.new(key: 'pfvPsdRqtPDeWQk9')

### Examples

#### Get information about a title

    trove.title(35)

#### Get list of all titles in the particular state

    trove.titles_by_state('VIC')

#### Get get the particular article

    trove.article(41697877)

#### Get get the particular article including article text

    trove.article_include_text(41697877)

#### Search among the all data

    trove.search('wombat')

#### Search among pictures

    trove.search_picture('wombat')

## Full list of methods

See [the documentation](http://help.nla.gov.au/trove/building-with-trove/api-technical-guide) for parameters.

    trove.contributors
    trove.contributor
    trove.contributor_full
    trove.article
    trove.article_full
    trove.article_include_text
    trove.work
    trove.work_full
    trove.work_include_holdings
    trove.search
    trove.search_book
    trove.search_picture
    trove.search_article
    trove.search_music
    trove.search_map
    trove.search_collection
    trove.search_newspaper
    trove.search_list
    trove.titles
    trove.titles_by_state
    trove.title
    trove.title_include_years
    trove.title_articles_count
    trove.title_comments_count
    trove.title_tags_count

