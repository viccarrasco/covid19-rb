# frozen_string_literal: true

class BaseRepository
  GLOBAL_STATS_URL = 'https://thevirustracker.com/'
  DEFAULT_RESOURCE = 'free-api'

  attr_reader :query_validator

  def initialize
    @query_validator = Validators::QueryValidator.new
  end

  def global
    raise 'NotImplementedError::global'
  end

  def by_country(country:)
    raise 'NotImplementedError::by_country'
  end

  private

  def retrieve(resource:, query:)
    if query_validator.valid?(query: query)
      response = ping_api(GLOBAL_STATS_URL, resource: resource, query: query)
      response.body
    else
      { error: 'Invalid parameter sequence' }.to_json
    end
  rescue => exception
    { error: "Unexpected Error: #{exception}" }.to_json
  end

  def ping_api(uri, **options)
    uri = URI(uri += options[:resource]) if options[:resource]
    uri.query = URI.encode_www_form(options[:query]) if options[:query]
    Net::HTTP.get_response(uri)
  end
end
