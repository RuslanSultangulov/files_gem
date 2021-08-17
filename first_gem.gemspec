# frozen_string_literal: true

require_relative "lib/first_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "first_gem"
  spec.version       = FirstGem::VERSION
  spec.authors       = ["Ruslan Sultangulov"]
  spec.email         = ["rsultangul@mail.ru"]

  spec.summary       = "A gem that shows files in the current directory."
  spec.description   = "A gem with 3 methods: 1) 'files' -> show just filenames,
                        2) 'files_relative' -> show relative paths to files,
                        3) 'files_absolute' -> show absolute paths to files"
  spec.homepage      = "https://rubygems.org/gems/files_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
