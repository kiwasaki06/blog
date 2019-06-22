# -*- encoding: utf-8 -*-
# stub: activestorage 0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "activestorage".freeze
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2017-07-06"
  s.email = "david@basecamp.com".freeze
  s.homepage = "https://github.com/rails/activestorage".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.4".freeze
  s.summary = "Attach cloud and local files in Rails applications".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.1"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 5.1"])
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 5.1"])
      s.add_runtime_dependency(%q<activejob>.freeze, [">= 5.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 5.1"])
      s.add_dependency(%q<activerecord>.freeze, [">= 5.1"])
      s.add_dependency(%q<actionpack>.freeze, [">= 5.1"])
      s.add_dependency(%q<activejob>.freeze, [">= 5.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 5.1"])
    s.add_dependency(%q<activerecord>.freeze, [">= 5.1"])
    s.add_dependency(%q<actionpack>.freeze, [">= 5.1"])
    s.add_dependency(%q<activejob>.freeze, [">= 5.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
  end
end
