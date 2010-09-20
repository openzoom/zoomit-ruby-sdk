require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe Zoomit do
  
  it "should include HTTParty" do
    Zoomit.ancestors.include?(HTTParty).should be_true
  end
  
  it "should set the HTTParty base_uri" do
    Zoomit.base_uri.should == "http://api.zoom.it/#{Zoomit::API_VERSION}"
  end
  
  it "should set the HTTParty format" do
    Zoomit.format.should == :json
  end
  
  it "should set the API version" do
    Zoomit::API_VERSION.should == "v1"
  end
  
  
  describe ".perform_get" do

    it "should fail if url is absent" do
      lambda { Zoomit.perform_get }.should raise_error(ArgumentError)
    end
    
  end
  
end