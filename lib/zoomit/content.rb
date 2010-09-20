module Zoomit
  
  
  class Content
      
    def self.find(id, options={})
      response = Zoomit.perform_get("/content/#{id}", options)
      Response.new(response.parsed_response)
    end
    
    def self.find_by_url(url, options={})
      response = Zoomit.perform_get("/content", options.merge!(:query => {:url => url}))
      Response.new(response.parsed_response)
    end
    
    class << self
      alias :create :find_by_url
    end
    
  end


end