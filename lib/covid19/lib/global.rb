# frozen_string_literal: true

module Covid19
  class GlobalStatistics < BaseResource
    def self.retrieve(**options)
      present_as_json(repository.global)
    end

    private

    def self.repository
      Repositories::Statistics.new
    end
  end
end
