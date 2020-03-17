# frozen_string_literal: true

module Statistics
  class Global < BaseResource
    def self.retrieve(**options)
      present(repository.global)
    end

    private

    def self.repository
      Repositories::Statistics.new
    end
  end
end
