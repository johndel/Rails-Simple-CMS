# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "net-ssh-gateway"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamis Buck"]
  s.date = "2011-04-30"
  s.description = "A simple library to assist in establishing tunneled Net::SSH connections"
  s.email = "net-ssh-gateway@solutious.com"
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "lib/net/ssh/gateway.rb", "README.rdoc"]
  s.files = ["CHANGELOG.rdoc", "lib/net/ssh/gateway.rb", "README.rdoc"]
  s.homepage = "http://net-ssh.rubyforge.org/gateway"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Net-ssh-gateway", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "net-ssh-gateway"
  s.rubygems_version = "1.8.10"
  s.summary = "A simple library to assist in establishing tunneled Net::SSH connections"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>, [">= 1.99.1"])
    else
      s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
  end
end
