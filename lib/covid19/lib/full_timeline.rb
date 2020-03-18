# frozen_string_literal: true

module Timelines
  class FullTimeline < BaseResource
    def self.retrieve(**options)
      present(repository.global)
    end

    private

    def self.repository
      Repositories::Timeline.new
    end
  end
end
