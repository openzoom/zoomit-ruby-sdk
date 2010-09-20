require 'httparty'
require 'hashie'
require 'zoomit/response'
require 'zoomit/content'
require 'zoomit/error'


module Zoomit
  include HTTParty
   
  API_VERSION = "v1".freeze
  base_uri "api.zoom.it/#{API_VERSION}"
  format :json
  

  private
  
    def self.perform_get(url, options={})
      response = get(url, options)
      raise_exception_on_errors(response)
      response
    end
  
    def self.raise_exception_on_errors(response)
      case response.code.to_i
        when 400
          raise BadRequestError, response.parsed_response
        when 404
          raise NotFoundError, response.parsed_response
        when 500
          raise ServerError, response.parsed_response
        when 502..503
          raise UnavailableError, response.parsed_response
      end   
    end

end