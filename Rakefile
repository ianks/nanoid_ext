require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

task build: :compile

spec = Gem::Specification.new do |spec|
  spec.name = 'nanoid_ext'
  spec.version = Nanoid::VERSION
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')
  spec.authors = ['Ian Ker-Seymer']
  spec.email = ['i.kerseymer@gmail.com']

  spec.summary = 'C++ extension for nanoid gem'
  spec.description =
    'C++ extension for nanoid gem: A tiny, secure URL-friendly unique string ID generator.'
  spec.platform = Gem::Platform::RUBY


  spec.extensions = ['ext/nanoid_ext/extconf.rb']
end

# add your default gem packing task
Gem::PackageTask.new(spec) do |pkg|
end

Rake::ExtensionTask.new('ext', spec) do |ext|
  ext.ext_dir = 'ext/nanoid_ext'
end

task default: %i[clobber compile spec]