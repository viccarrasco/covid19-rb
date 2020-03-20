# frozen_string_literal: true

require 'covid19/version'
require 'date'
require 'net/http'
require 'byebug'
require 'json'
require 'arssene'
require 'covid19/lib/presenters/presenters.rb'
require 'covid19/lib/base_resource.rb'
require 'covid19/lib/global.rb'
require 'covid19/lib/timeline.rb'
require 'covid19/lib/news.rb'
require 'covid19/lib/repositories/virus_tracker/base_repository.rb'
require 'covid19/lib/repositories/virus_tracker/statistics_repository.rb'
require 'covid19/lib/repositories/virus_tracker/timeline_repository.rb'
require 'covid19/lib/repositories/news/news_repository.rb'
require 'covid19/lib/validators/query_validator.rb'

module Covid19
  class Error < StandardError; end
  # Your code goes here...
end
