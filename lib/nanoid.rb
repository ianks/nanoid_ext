require 'nanoid/version'

begin
  RUBY_VERSION =~ /(\d+\.\d+)/
  require "#{$1}/nanoid/ext"
rescue LoadError
	require 'nanoid/ext'
end

module Nanoid
end
