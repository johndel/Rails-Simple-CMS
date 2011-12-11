# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "yard"
  s.version = "0.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Loren Segal"]
  s.date = "2011-10-15"
  s.description = "    YARD is a documentation generation tool for the Ruby programming language.\n    It enables the user to generate consistent, usable documentation that can be\n    exported to a number of formats very easily, and also supports extending for\n    custom Ruby constructs such as custom class level definitions.\n"
  s.email = "lsegal@soen.ca"
  s.executables = ["yard", "yardoc", "yri"]
  s.files = ["bin/yard", "bin/yardoc", "bin/yri"]
  s.homepage = "http://yardoc.org"
  s.require_paths = ["lib"]
  s.rubyforge_project = "yard"
  s.rubygems_version = "1.8.10"
  s.summary = "Documentation tool for consistent and usable documentation in Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
