# -*- encoding: utf-8 -*-
# stub: phonelib 0.6.24 ruby lib

Gem::Specification.new do |s|
  s.name = "phonelib".freeze
  s.version = "0.6.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vadim Senderovich".freeze]
  s.date = "2018-07-30"
  s.description = "    Google libphonenumber library was taken as a basis for\n    this gem. Gem uses its data file for validations and number formatting.\n".freeze
  s.email = ["daddyzgm@gmail.com".freeze]
  s.homepage = "https://github.com/daddyz/phonelib".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = [" --no-private - CHANGELOG.md --readme README.md".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Gem validates phone numbers with Google libphonenumber database".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["< 11.0"])
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["= 2.14.1"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack-cache>.freeze, ["= 1.2"])
      s.add_development_dependency(%q<json>.freeze, ["= 1.8.6"])
    else
      s.add_dependency(%q<rake>.freeze, ["< 11.0"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["= 2.14.1"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<rack-cache>.freeze, ["= 1.2"])
      s.add_dependency(%q<json>.freeze, ["= 1.8.6"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["< 11.0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["= 2.14.1"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<rack-cache>.freeze, ["= 1.2"])
    s.add_dependency(%q<json>.freeze, ["= 1.8.6"])
  end
end
