require_relative 'lib/nanoid/version'

Gem::Specification.new do |spec|
  spec.name          = "nanoid"
  spec.version       = Nanoid::VERSION
  spec.authors       = ["Ian Ker-Seymer"]
  spec.email         = ["i.kerseymer@gmail.com"]

  spec.summary       = %q{C++ extension for nanoid gem}
  spec.description   = %q{C++ extension for nanoid gem: A tiny, secure URL-friendly unique string ID generator.}
  spec.homepage      = "https://github.com/ianks/nanoid-ext"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/nanoid_ext/extconf.rb"]
end
