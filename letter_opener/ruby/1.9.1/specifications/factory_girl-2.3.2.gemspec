# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "factory_girl"
  s.version = "2.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joe Ferris"]
  s.date = "2011-11-26"
  s.description = "factory_girl provides a framework and DSL for defining and\n                       using factories - less error-prone, more explicit, and\n                       all-around easier to work with than fixtures."
  s.email = "jferris@thoughtbot.com"
  s.homepage = "https://github.com/thoughtbot/factory_girl"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "factory_girl provides a framework and DSL for defining and using model instance factories."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.0.0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<bourne>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.3.8"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<bluecloth>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.0.0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<bourne>, [">= 0"])
      s.add_dependency(%q<appraisal>, ["~> 0.3.8"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<bluecloth>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.0.0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<bourne>, [">= 0"])
    s.add_dependency(%q<appraisal>, ["~> 0.3.8"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<bluecloth>, [">= 0"])
  end
end
