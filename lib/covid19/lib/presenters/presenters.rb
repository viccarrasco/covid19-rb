# frozen_string_literal: true

module Presenters
  def present_as_json(data)
    JSON.parse(data).to_json
  end
end
