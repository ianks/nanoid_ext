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
  spec.homepage = 'https://github.com/ianks/nanoid_ext'
  spec.license = 'MIT'
  spec.platform = Gem::Platform::RUBY


  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
      end
    end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions = ['ext/nanoid_ext/extconf.rb']
end

# add your default gem packing task
Gem::PackageTask.new(spec) do |pkg|
end

Rake::ExtensionTask.new('ext', spec) do |ext|
  ext.ext_dir = 'ext/nanoid_ext'
end

task default: %i[clobber compile spec]