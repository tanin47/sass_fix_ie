# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "sass_fix_ie"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tanin Na Nakorn"]
  s.email       = ["tanin47@yahoo.com"]
  s.homepage    = "http://github.com/tanin47/sass_fix_ie"
  s.summary     = %q{SASS extension to fix display: inline-block of IE}
  s.description = %q{It automatically includes zoom:1 and *display:inline for you}

  s.rubyforge_project = "sass_fix_ie"

  s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {rails,spec}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass')
end
