require "rake/testtask"
require "bundler/gem_tasks"

task :default => :test

Rake::TestTask.new do |t|
  t.ruby_opts = [ '-rminitest/autorun', '-rminitest/pride', '-rlatinverb_irregular_imperatives_retriever' ]
  t.libs << "test"
  t.test_files = FileList['test/*test*.rb']
  t.verbose = true
end

