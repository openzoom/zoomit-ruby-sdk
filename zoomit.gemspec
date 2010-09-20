# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{zoomit}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tobias Matthies"]
  s.date = %q{2010-09-20}
  s.description = %q{API wrapper for the Live Labs zoom.it API}
  s.email = %q{tm@mit2m.de}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".gitignore",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "lib/zoomit.rb",
    "lib/zoomit/content.rb",
    "lib/zoomit/error.rb",
    "lib/zoomit/response.rb",
    "lib/zoomit/version.rb",
    "spec/.rspec",
    "spec/responses/zoomit_create_url.response",
    "spec/spec_helper.rb",
    "spec/zoomit/content_spec.rb",
    "spec/zoomit/response_spec.rb",
    "spec/zoomit_spec.rb"
  ]
  s.homepage = %q{http://github.com/tobmatth/zoomit}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{API wrapper for the Live Labs zoom.it API}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/zoomit/content_spec.rb",
    "spec/zoomit/response_spec.rb",
    "spec/zoomit_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.6.1"])
      s.add_runtime_dependency(%q<hashie>, [">= 0.4.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_development_dependency(%q<webmock>, [">= 1.3.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_development_dependency(%q<webmock>, [">= 1.3.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.6.1"])
      s.add_dependency(%q<hashie>, [">= 0.4.0"])
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_dependency(%q<webmock>, [">= 1.3.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
      s.add_dependency(%q<webmock>, [">= 1.3.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.6.1"])
    s.add_dependency(%q<hashie>, [">= 0.4.0"])
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
    s.add_dependency(%q<webmock>, [">= 1.3.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.0.0.beta.22"])
    s.add_dependency(%q<webmock>, [">= 1.3.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.0.pre3"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
