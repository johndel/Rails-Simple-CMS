# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard"
  s.version = "0.8.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = "2011-10-21"
  s.description = "Guard is a command line tool to easily handle events on file system modifications."
  s.email = ["thibaud@thibaud.me"]
  s.executables = ["guard"]
  s.files = ["bin/guard"]
  s.homepage = "https://github.com/guard/guard"
  s.require_paths = ["lib"]
  s.rubyforge_project = "guard"
  s.rubygems_version = "1.8.10"
  s.summary = "Guard keeps an eye on your file modifications"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.6"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 0.5.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_development_dependency(%q<kramdown>, ["~> 0.13.3"])
    else
      s.add_dependency(%q<thor>, ["~> 0.14.6"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 0.5.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.2"])
      s.add_dependency(%q<kramdown>, ["~> 0.13.3"])
    end
  else
    s.add_dependency(%q<thor>, ["~> 0.14.6"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 0.5.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.2"])
    s.add_dependency(%q<kramdown>, ["~> 0.13.3"])
  end
end
