# -*- encoding: utf-8 -*-
# stub: massive_record 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "massive_record"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Companybook"]
  s.date = "2011-06-23"
  s.description = "HBase Ruby client API"
  s.email = "geeks@companybook.no"
  s.homepage = "http://github.com/CompanyBook/massive_record"
  s.require_paths = ["lib"]
  s.rubyforge_project = "massive_record"
  s.rubygems_version = "2.1.9"
  s.summary = "HBase Ruby client API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thrift>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 0"])
      s.add_runtime_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.1.0"])
    else
      s.add_dependency(%q<thrift>, [">= 0.5.0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.1.0"])
    end
  else
    s.add_dependency(%q<thrift>, [">= 0.5.0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.1.0"])
  end
end
