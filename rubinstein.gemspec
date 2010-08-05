# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubinstein}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kevin W. Gisi"]
  s.date = %q{2010-08-05}
  s.default_executable = %q{rubinstein}
  s.description = %q{Ruby text-adventure game engine}
  s.email = %q{kevin@kevingisi.com}
  s.executables = ["rubinstein"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc", "bin/rubinstein", "lib/rubinstein.rb", "lib/rubinstein/actions.rb", "lib/rubinstein/actions/movement.rb", "lib/rubinstein/game.rb", "lib/rubinstein/location.rb", "lib/rubinstein/player.rb", "lib/rubinstein/runner.rb", "lib/rubinstein/world.rb"]
  s.files = ["LICENSE", "README.rdoc", "Rakefile", "VERSION", "bin/rubinstein", "example.rb", "features/support/aruba_interactive.rb", "features/support/env.rb", "features/usage.feature", "lib/rubinstein.rb", "lib/rubinstein/actions.rb", "lib/rubinstein/actions/movement.rb", "lib/rubinstein/game.rb", "lib/rubinstein/location.rb", "lib/rubinstein/player.rb", "lib/rubinstein/runner.rb", "lib/rubinstein/world.rb", "simple.rb", "spec/spec.opts", "spec/spec_helper.rb", "Manifest", "rubinstein.gemspec"]
  s.homepage = %q{http://gisikw.github.com/my}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rubinstein", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubinstein}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby text-adventure game engine}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>, [">= 0.7.2"])
      s.add_development_dependency(%q<aruba>, [">= 0.1.9"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.7.2"])
      s.add_dependency(%q<aruba>, [">= 0.1.9"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.7.2"])
    s.add_dependency(%q<aruba>, [">= 0.1.9"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
  end
end
