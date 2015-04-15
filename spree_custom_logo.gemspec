# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_custom_logo'
  s.version     = '0.0.1'
  s.summary     = 'Adds ability to upload custom logo'
  s.description = 'Adds ability to upload custom logo'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Sanad Liaquat'
  s.email     = 'sanadhussain@gmail.com'
  s.homepage  = 'https://github.com/sliaquat'

  s.files       = `git ls-files`.split("\n")
  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.0'

end


