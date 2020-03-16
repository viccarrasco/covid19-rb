# frozen_string_literal: true

module Statistics
  class Global
    def self.retrieve
      rep = Repositories::Statistics.new
      JSON.parse(rep.global).to_json
    end
  end
end
