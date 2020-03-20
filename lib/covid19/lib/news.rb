# frozen_string_literal: true

module Covid19
  class News < BaseResource
    def self.retrieve(**options)
      present_as_json(repository.retrieve(options))
    end

    def self.by_country(country:)
      raise 'NotYetImplementedError::News'
    end

    private

    def self.repository
      Repositories::News.new
    end
  end
end
