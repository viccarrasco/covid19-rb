# frozen_string_literal: true

module Repositories
  class Statistics < BaseRepository
    def global
      retrieve(resource: DEFAULT_RESOURCE, query: { global: 'stats' })
    end

    def by_country(country:)
      country = country.upcase unless country.nil?
      retrieve(resource: DEFAULT_RESOURCE, query: { countryTotal: country })
    end
  end
end
