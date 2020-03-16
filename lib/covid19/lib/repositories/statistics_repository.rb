# frozen_string_literal: true

module Repositories
  class Statistics < BaseRepository
    GLOBAL_STATS_URL = 'https://thevirustracker.com/'

    def global
      response = request(GLOBAL_STATS_URL,
                         resource: 'free-api', query: { global: 'stats' })
      response.body
    end
  end
end
