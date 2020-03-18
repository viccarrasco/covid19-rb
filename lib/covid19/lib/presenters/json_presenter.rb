# frozen_string_literal: true

module Presenters
  class JsonPresenter
    def present(data)
      JSON.parse(data).to_json
    end
  end
end
