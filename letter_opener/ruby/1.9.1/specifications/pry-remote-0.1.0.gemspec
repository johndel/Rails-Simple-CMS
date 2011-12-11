# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pry-remote"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mon ouie"]
  s.date = "2011-09-28"
  s.description = "Connect to Pry remotely using DRb"
  s.email = "mon.ouie@gmail.com"
  s.executables = ["pry-remote"]
  s.files = ["bin/pry-remote"]
  s.homepage = "http://github.com/Mon-Ouie/pry-remote"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Connect to Pry remotely"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<slop>, ["~> 2.1"])
      s.add_runtime_dependency(%q<pry>, ["~> 0.9.6"])
    else
      s.add_dependency(%q<slop>, ["~> 2.1"])
      s.add_dependency(%q<pry>, ["~> 0.9.6"])
    end
  else
    s.add_dependency(%q<slop>, ["~> 2.1"])
    s.add_dependency(%q<pry>, ["~> 0.9.6"])
  end
end
