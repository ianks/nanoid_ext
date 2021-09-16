require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

task build: :compile

Rake::ExtensionTask.new('ext') do |ext|
  ext.ext_dir = 'ext/nanoid_ext'
  ext.lib_dir = 'lib/nanoid'
end

task default: %i[clobber compile spec]
