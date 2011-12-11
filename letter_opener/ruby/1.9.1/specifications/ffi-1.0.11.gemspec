# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ffi"
  s.version = "1.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wayne Meissner"]
  s.date = "2011-11-13"
  s.description = "Ruby-FFI is a ruby extension for programmatically loading dynamic\nlibraries, binding functions within them, and calling those functions\nfrom Ruby code. Moreover, a Ruby-FFI extension works without changes\non Ruby and JRuby. Discover why should you write your next extension\nusing Ruby-FFI here[http://wiki.github.com/ffi/ffi/why-use-ffi]."
  s.email = "wmeissner@gmail.com"
  s.extensions = ["ext/ffi_c/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "README.rdoc", "lib/ffi/platform/i386-darwin/types.conf", "lib/ffi/platform/i386-freebsd/types.conf", "lib/ffi/platform/i386-linux/types.conf", "lib/ffi/platform/i386-netbsd/types.conf", "lib/ffi/platform/i386-openbsd/types.conf", "lib/ffi/platform/i386-solaris/types.conf", "lib/ffi/platform/i386-windows/types.conf", "lib/ffi/platform/powerpc-aix/types.conf", "lib/ffi/platform/powerpc-darwin/types.conf", "lib/ffi/platform/sparc-solaris/types.conf", "lib/ffi/platform/sparcv9-solaris/types.conf", "lib/ffi/platform/x86_64-darwin/types.conf", "lib/ffi/platform/x86_64-freebsd/types.conf", "lib/ffi/platform/x86_64-linux/types.conf", "lib/ffi/platform/x86_64-netbsd/types.conf", "lib/ffi/platform/x86_64-openbsd/types.conf", "lib/ffi/platform/x86_64-solaris/types.conf"]
  s.files = ["History.txt", "README.rdoc", "lib/ffi/platform/i386-darwin/types.conf", "lib/ffi/platform/i386-freebsd/types.conf", "lib/ffi/platform/i386-linux/types.conf", "lib/ffi/platform/i386-netbsd/types.conf", "lib/ffi/platform/i386-openbsd/types.conf", "lib/ffi/platform/i386-solaris/types.conf", "lib/ffi/platform/i386-windows/types.conf", "lib/ffi/platform/powerpc-aix/types.conf", "lib/ffi/platform/powerpc-darwin/types.conf", "lib/ffi/platform/sparc-solaris/types.conf", "lib/ffi/platform/sparcv9-solaris/types.conf", "lib/ffi/platform/x86_64-darwin/types.conf", "lib/ffi/platform/x86_64-freebsd/types.conf", "lib/ffi/platform/x86_64-linux/types.conf", "lib/ffi/platform/x86_64-netbsd/types.conf", "lib/ffi/platform/x86_64-openbsd/types.conf", "lib/ffi/platform/x86_64-solaris/types.conf", "ext/ffi_c/extconf.rb"]
  s.homepage = "http://wiki.github.com/ffi/ffi"
  s.rdoc_options = ["-x", "ext", "--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "ffi"
  s.rubygems_version = "1.8.10"
  s.summary = "Ruby-FFI is a ruby extension for programmatically loading dynamic libraries, binding functions within them, and calling those functions from Ruby code"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
