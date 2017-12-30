lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rspec-nice-html-formatter"
  spec.version       = "1.0.1"
  spec.authors       = ["ecin"]
  spec.email         = ["ecin@copypastel.com"]
  spec.description   = "A nice HTML formatter for your RSpec tests 🌈"
  spec.summary       = "Output your RSpec test results to a pretty HTML page for all to enjoy."
  spec.homepage      = "https://github.com/ecin/rspec-nice-html-formatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
end
