require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'zoomit'
require 'rspec'
require 'webmock/rspec'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.include WebMock
end


WebMock.disable_net_connect!

def mock_get(response_code, response_fixture=nil)
  response = {:status => response_code}
  response.merge!(:body => mocked_response(response_fixture)) if response_fixture
  stub_http_request(:get, /api.zoom.it*/).to_return(response)
end

def mocked_response(response_fixture)
  File.read(File.join(File.dirname(__FILE__), 'responses', response_fixture))
end

