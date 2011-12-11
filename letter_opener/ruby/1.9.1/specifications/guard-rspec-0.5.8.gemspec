# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-rspec"
  s.version = "0.5.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = "2011-11-27"
  s.description = "Guard::RSpec automatically run your specs (much like autotest)."
  s.email = ["thibaud@thibaud.me"]
  s.homepage = "http://rubygems.org/gems/guard-rspec"
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard-rspec"
  s.rubygems_version = "1.8.10"
  s.summary = "Guard gem for RSpec"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0.8.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.7"])
    else
      s.add_dependency(%q<guard>, [">= 0.8.4"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.7"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.8.4"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.7"])
  end
end
