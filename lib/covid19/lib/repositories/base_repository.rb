# frozen_string_literal: true

class BaseRepository
  def request(uri, **options)
    uri = URI(uri += options[:resource]) if options[:resource]
    uri.query = URI.encode_www_form(options[:query]) if options[:query]
    Net::HTTP.get_response(uri)
  end
end
