require 'echoe'
require 'rake/rdoctask'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

Echoe.new "rubinstein", File.read("VERSION").chomp do |m|
  m.author  = "Kevin W. Gisi"
  m.email   = "kevin@kevingisi.com"
  m.summary = "Ruby text-adventure game engine"
  m.url     = "http://gisikw.github.com/my"
  m.development_dependencies << "cucumber >=0.7.2"
  m.development_dependencies << "aruba >=0.1.9"
  m.development_dependencies << "rspec >=1.3.0"
end

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
  spec.rcov = true
  spec.rcov_opts = ["-T"]
end

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Rubinstein #{version}"
  rdoc.main = 'README.rdoc'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => :spec
