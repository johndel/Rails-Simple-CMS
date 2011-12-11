# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "letter_opener"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Bates"]
  s.date = "2011-09-07"
  s.description = "When mail is sent from your application, Letter Opener will open a preview in the browser instead of sending."
  s.email = "ryan@railscasts.com"
  s.homepage = "http://github.com/ryanb/letter_opener"
  s.require_paths = ["lib"]
  s.rubyforge_project = "letter_opener"
  s.rubygems_version = "1.8.10"
  s.summary = "Preview mail in browser instead of sending."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<mail>, ["~> 2.3.0"])
    else
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<mail>, ["~> 2.3.0"])
    end
  else
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<mail>, ["~> 2.3.0"])
  end
end
