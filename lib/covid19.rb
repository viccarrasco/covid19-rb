# frozen_string_literal: true

require 'covid19/version'
require 'date'
require 'net/http'
require 'byebug'
require 'json'
require 'covid19/lib/global.rb'
require 'covid19/lib/repositories/base_repository.rb'
require 'covid19/lib/repositories/statistics_repository.rb'

module Covid19
  class Error < StandardError; end
  # Your code goes here...
end
