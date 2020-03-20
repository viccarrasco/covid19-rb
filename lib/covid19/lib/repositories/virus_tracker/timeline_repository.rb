# frozen_string_literal: true

module Repositories
  class Timeline < BaseRepository
    def global
      retrieve(resource: 'timeline/map-data.json', query: {})
    end

    def by_country(country:)
      retrieve(resource: DEFAULT_RESOURCE, query: { countryTimeline: country&.upcase })
    end
  end
end
