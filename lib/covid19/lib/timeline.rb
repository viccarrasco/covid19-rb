# frozen_string_literal: true

module Covid19
  class Timeline < BaseResource
    def self.retrieve(**options)
      present_as_json(repository.global)
    end

    private

    def self.repository
      Repositories::Timeline.new
    end
  end
end
