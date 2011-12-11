# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shoulda-matchers"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tammer Saleh", "Joe Ferris", "Ryan McGeary", "Dan Croak", "Matt Jankowski", "Stafford Brunk"]
  s.date = "2011-11-01"
  s.description = "Making tests easy on the fingers and eyes"
  s.email = "support@thoughtbot.com"
  s.extra_rdoc_files = ["README.rdoc", "CONTRIBUTION_GUIDELINES.rdoc"]
  s.files = ["README.rdoc", "CONTRIBUTION_GUIDELINES.rdoc"]
  s.homepage = "http://thoughtbot.com/community/"
  s.rdoc_options = ["--line-numbers", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Making tests easy on the fingers and eyes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, ["~> 0.9.10"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.6.1.beta1"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.10.0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.3.4"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
    else
      s.add_dependency(%q<mocha>, ["~> 0.9.10"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.6.1.beta1"])
      s.add_dependency(%q<cucumber>, ["~> 0.10.0"])
      s.add_dependency(%q<appraisal>, ["~> 0.3.4"])
      s.add_dependency(%q<aruba>, [">= 0"])
    end
  else
    s.add_dependency(%q<mocha>, ["~> 0.9.10"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.6.1.beta1"])
    s.add_dependency(%q<cucumber>, ["~> 0.10.0"])
    s.add_dependency(%q<appraisal>, ["~> 0.3.4"])
    s.add_dependency(%q<aruba>, [">= 0"])
  end
end
