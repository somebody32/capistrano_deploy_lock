# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_deploy_lock/version'

Gem::Specification.new do |gem|
  gem.name          = 'capistrano_deploy_lock'
  gem.version       = CapistranoDeployLock::VERSION
  gem.authors       = ['Nathan Broadbent']
  gem.email         = ['nathan.f77@gmail.com']
  gem.description   = %q{Lock a server during deploy, to prevent people from deploying at the same time.}
  gem.summary       = %q{Capistrano Deploy Lock}
  gem.homepage      = 'https://github.com/ndbroadbent/capistrano_deploy_lock'
  gem.license       = 'MIT'

  gem.files         = Dir['{lib,bin}/**/*']
  gem.executables   = Dir['bin/**/*'].map { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'capistrano', '~> 2.0'
end
