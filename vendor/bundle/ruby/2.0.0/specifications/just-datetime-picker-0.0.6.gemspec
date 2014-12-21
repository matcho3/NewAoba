# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "just-datetime-picker"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcin Lewandowski", "doabit"]
  s.date = "2013-02-23"
  s.description = "Gem that just creates date/time picker in Active Admin forms"
  s.email = ["marcin@saepia.net"]
  s.homepage = "https://github.com/saepia/just-datetime-picker"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Gem that just creates date/time picker in Active Admin forms"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<formtastic>, [">= 2.0.0"])
      s.add_runtime_dependency(%q<activeadmin>, [">= 0.4.4"])
    else
      s.add_dependency(%q<formtastic>, [">= 2.0.0"])
      s.add_dependency(%q<activeadmin>, [">= 0.4.4"])
    end
  else
    s.add_dependency(%q<formtastic>, [">= 2.0.0"])
    s.add_dependency(%q<activeadmin>, [">= 0.4.4"])
  end
end
