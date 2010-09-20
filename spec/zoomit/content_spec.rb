require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Zoomit::Content do
  
  describe ".find" do
    
    it "should return a Zoomit Response object" do
      mock_get(200, 'zoomit_create_url.response')
      response = Zoomit::Content.find('7nA')
      response.class.should == Zoomit::Response
    end
    
    it "should raise a Zoomit::NotFoundError if a content element could not be found" do
      mock_get(404)
      lambda { Zoomit::Content.find('f4444444444iL') }.should raise_error(Zoomit::NotFoundError)
    end
    
    it "should raise a Zoomit::ServerError if zoom.it fails" do
      mock_get(500)
      lambda { Zoomit::Content.find('7nA') }.should raise_error(Zoomit::ServerError)
    end
    
    it "should raise a Zoomit::UnavailableError if zoom.it can't scale" do
      mock_get(503)
      lambda { Zoomit::Content.find('7nA') }.should raise_error(Zoomit::UnavailableError)
    end
    
  end
  
  
  describe ".create / .find_by_url" do
    
    it "should return a Zoomit Response object" do
      mock_get(200, 'zoomit_create_url.response')
      response = Zoomit::Content.create('http://www.mit2m.de')
      response.class.should == Zoomit::Response
    end
    
    it "should raise a Zoomit::BadRequestError if an invalid url is passed" do
      mock_get(400)
      lambda { Zoomit::Content.create('htp:/f41L.org') }.should raise_error(Zoomit::BadRequestError)
    end
    
    it "should raise a Zoomit::ServerError if zoom.it fails" do
      mock_get(500)
      lambda { Zoomit::Content.create('htp:/f41L.org') }.should raise_error(Zoomit::ServerError)
    end
    
    it "should raise a Zoomit::UnavailableError if zoom.it can't scale" do
      mock_get(503)
      lambda { Zoomit::Content.create('http:/overload.org') }.should raise_error(Zoomit::UnavailableError)
    end
    
  end
  
end