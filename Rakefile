require 'rubygems'
require 'rake'
require 'echoe'
require 'rake/testtask'


Echoe.new('bahire_hasab','0.1.0') do |p|
  p.description      = "A simple calculator of floating feasts and fasts of the Ethiopian Orthodox Church"
  p.url              = "http://github.com/mtibebu/bahire_hasab"
  p.author          = ["Mesfin Tibebu"]
  p.email           = ["mesfinbt@gmail.com"]
  p.ignore_pattern   = ["tmp/*","script/*"]
  p.development_dependencies = []
end
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => :test
