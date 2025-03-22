# frozen_string_literal: true

require_relative "lib/byebug/version"

Gem::Specification.new do |s|
  s.name = "runger_byebug"
  s.version = Byebug::VERSION
  s.authors = ["David Runger"] # forked from ["David Rodriguez", "Kent Sibilev", "Mark Moseley"]
  s.email = "davidjrunger@gmail.com"
  s.license = "BSD-2-Clause"
  s.homepage = "https://github.com/davidrunger/runger_byebug"
  s.summary = "Ruby fast debugger - base + CLI"
  s.description = "Byebug is a Ruby debugger. It's implemented using the
    TracePoint C API for execution control and the Debug Inspector C API for
    call stack navigation.  The core component provides support that front-ends
    can build on. It provides breakpoint handling and bindings for stack frames
    among other things and it comes with an easy to use command line interface."

  if s.respond_to?(:metadata)
    s.metadata["rubygems_mfa_required"] = "true"

    s.metadata["homepage_uri"] = s.homepage
    s.metadata["source_code_uri"] = "https://github.com/davidrunger/runger_byebug"
    s.metadata["changelog_uri"] = "https://github.com/davidrunger/runger_byebug/blob/main/CHANGELOG.md"
  else
    raise("RubyGems 2.0 or newer is required to protect against public gem pushes.")
  end

  s.required_ruby_version = ">= 2.5.0"

  s.files = Dir["lib/**/*.rb", "lib/**/*.yml", "ext/**/*.[ch]", "LICENSE"]
  s.bindir = "exe"
  s.executables = ["byebug"]
  s.extra_rdoc_files = %w[CHANGELOG.md CONTRIBUTING.md README.md GUIDE.md]
  s.extensions = ["ext/byebug/extconf.rb"]
  s.require_path = "lib"

  s.add_dependency "irb"
  s.add_dependency "reline"
end
