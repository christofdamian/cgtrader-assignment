class Prompt < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.search_highlight(query)
    __elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['content']
        }
      },
      highlight: {
        pre_tags: ['<b>'],
        post_tags: ['</b>'],
        fields: {
          content: {},
        }
      }
    }
  )
  end
end
