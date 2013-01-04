# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bahire_hasab"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mesfin Tibebu"]
  s.date = "2012-07-25"
  s.description = "A simple calculator of floating feasts and fasts of the Ethiopian Orthodox Church.  The floating holidays start from the start of Jonah's fast (Tsome Nenewe) till the start of fasts on Wednesdays and Fridays (Tsome Dihnet)"
  s.email = ["mesfinbt@gmail.com"]
  s.extra_rdoc_files = ["README", "lib/bahire_hasab.rb"]
  s.files = ["README", "Rakefile", "bahire_hasab.gemspec", "lib/bahire_hasab.rb", "lib/bahire_hasab/bealatna_atswamat.rb", "lib/bahire_hasab/constants.rb", "lib/bahire_hasab/kemerat.rb"]
  s.homepage = "http://github.com/mtibebu/bahire_hasab"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "bahire_hasab", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "bahire_hasab"
  s.rubygems_version = "1.8.10"
  s.summary = "A simple calculator of floating feasts and fasts of the Ethiopian Orthodox Church"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
