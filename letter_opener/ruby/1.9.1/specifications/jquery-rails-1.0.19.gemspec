# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "jquery-rails"
  s.version = "1.0.19"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andr\u{e9} Arko"]
  s.date = "2011-11-26"
  s.description = "This gem provides jQuery and the jQuery-ujs driver for your Rails 3 application."
  s.email = ["andre@arko.net"]
  s.homepage = "http://rubygems.org/gems/jquery-rails"
  s.require_paths = ["lib"]
  s.rubyforge_project = "jquery-rails"
  s.rubygems_version = "1.8.10"
  s.summary = "Use jQuery with Rails 3"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 3.0"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<rails>, ["~> 3.0"])
    else
      s.add_dependency(%q<railties>, ["~> 3.0"])
      s.add_dependency(%q<thor>, ["~> 0.14"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<rails>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.0"])
    s.add_dependency(%q<thor>, ["~> 0.14"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<rails>, ["~> 3.0"])
  end
end
