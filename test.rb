require "rubygems"
require "bundler/setup"

# require your gems as usual
require "sass"
require File.expand_path("../sass_fix_ie", __FILE__)

css = <<-eos
.Test {
  .Hello {
    display: inline-block;
  }
}
eos

puts  Sass::Engine.new(css,
                   :syntax => :scss,
                   :cache => false,
                   :read_cache => false,
                   :style => {}).render # note: style is set by railtie or by config
