# frozen_string_literal: true

class BaseResource
  def self.retrieve(**options)
    raise 'NotImplementedException::retrieve'
  end

  def self.by_country(country:)
    present(repository.by_country(country: country))
  end

  private

  def self.repository
    raise 'NotImplementedException::repository'
  end

  def self.present(data, presenter: Presenters::JsonPresenter.new)
    presenter.present(data)
  end
end
