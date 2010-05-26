#
# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/testtask'
require 'lib/mini_css'

spec = Gem::Specification.new do |s|
  s.name = 'mini_css'
  s.version = '0.0.1'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.markdown']
  s.summary = 'Minimise your CSS files using by compressing and combining them into one file. Reduce HTTP requests, file size, and save bandwidth.'
  s.description = s.summary + ' See http://github.com/nathankleyn/mini_css for more information.'
  s.author = 'Nathan Kleyn'
  s.email = 'nathan@unfinitydesign.com'
  s.executables = ['mini_css']
  s.files = %w(README.markdown Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
  
  # Adding the dependencies we need.
  s.add_dependency('rainpress', '>= 1.0')
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

Rake::RDocTask.new do |rdoc|
  files =['README.markdown', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README.markdown" # page to start on
  rdoc.title = "mini_css Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end
