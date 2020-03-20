# frozen_string_literal: true

class BaseResource
  extend Presenters

  def self.retrieve(**options)
    raise 'NotImplementedException::retrieve'
  end

  def self.by(country:)
    present_as_json(repository.by_country(country: country))
  end

  private

  def self.repository
    raise 'NotImplementedException::repository'
  end
end
