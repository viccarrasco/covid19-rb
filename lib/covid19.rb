# frozen_string_literal: true

require 'covid19/version'
require 'date'
require 'net/http'
require 'byebug'
require 'json'
require 'covid19/lib/base_resource.rb'
require 'covid19/lib/global.rb'
require 'covid19/lib/full_timeline.rb'
require 'covid19/lib/repositories/base_repository.rb'
require 'covid19/lib/repositories/statistics_repository.rb'
require 'covid19/lib/repositories/timeline_repository.rb'
require 'covid19/lib/validators/query_validator.rb'
require 'covid19/lib/presenters/json_presenter.rb'

module Covid19
  class Error < StandardError; end
  # Your code goes here...
end
