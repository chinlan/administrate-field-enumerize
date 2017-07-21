# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-enumerize"
  spec.version       = "1.0.0"
  spec.authors       = ["Mikazuki Fuyuno"]
  spec.email         = ["mikazuki_fuyuno@outlook.com"]

  spec.summary       = 'Plugin for adding Enumerize gem support in Administrate.'
  spec.description   = 'Plugin for adding Enumerize gem support in Administrate.'
  spec.homepage      = 'https://github.com/mika-f/administrate-field-enumerize'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'administrate', '~> 0.8'
  spec.add_dependency 'enumerize', '~> 2.1'
  spec.add_dependency 'rails', '>= 5.0.0'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
