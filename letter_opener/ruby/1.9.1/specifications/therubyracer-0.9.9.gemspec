# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "therubyracer"
  s.version = "0.9.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Lowell", "Bill Robertson"]
  s.date = "2011-11-08"
  s.description = "Call javascript code and manipulate javascript objects from ruby. Call ruby code and manipulate ruby objects from javascript."
  s.email = "cowboyd@thefrontside.net"
  s.executables = ["therubyracer"]
  s.extensions = ["ext/v8/extconf.rb"]
  s.files = ["bin/therubyracer", "ext/v8/extconf.rb"]
  s.homepage = "http://github.com/cowboyd/therubyracer"
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "therubyracer"
  s.rubygems_version = "1.8.10"
  s.summary = "Embed the V8 Javascript interpreter into Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<libv8>, ["~> 3.3.10"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
    else
      s.add_dependency(%q<libv8>, ["~> 3.3.10"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
    end
  else
    s.add_dependency(%q<libv8>, ["~> 3.3.10"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
  end
end
