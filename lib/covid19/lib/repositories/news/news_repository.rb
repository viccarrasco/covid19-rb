# frozen_string_literal: true

module Repositories
  class News
    WHO_FEED = 'https://www.who.int/rss-feeds/news-english.xml'

    def retrieve(**args)
      arssene = Arssene::Feed.request(rss(args), from_date: DateTime.now - 2)[:channel]
      data = {
        title: arssene.title,
        description: arssene.description,
        entries: entries_to_hash(arssene.entries)
      }
      data.to_json
    end

    private

    def rss(parameters)
      parameters[:rss].nil? ? WHO_FEED : parameters[:rss]
    end

    def entries_to_hash(entries)
      entries.map.with_index do |entry, index|
        entries[index] = {
          title:  entry.title,
          link:   entry.link.strip.chomp,
          date:   entry.publication_date.to_s.strip.chomp,
          description: entry.description.strip.chomp
        }
      end
    end
  end
end
