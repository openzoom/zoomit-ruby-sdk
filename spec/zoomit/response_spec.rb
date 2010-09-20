require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Zoomit::Response do
  
  it "should inherit from Hashie::Mash" do
    Zoomit::Response.superclass.should == Hashie::Mash
  end
  
end