# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pry-rails"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robin Wenglewski"]
  s.date = "2011-08-29"
  s.email = ["robin@wenglewski.de"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Use Pry as your rails console"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>, [">= 0"])
      s.add_runtime_dependency(%q<pry-doc>, [">= 0"])
    else
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-doc>, [">= 0"])
    end
  else
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-doc>, [">= 0"])
  end
end
