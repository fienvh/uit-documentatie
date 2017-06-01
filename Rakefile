require 'rake'

require_relative 'tasks/env.rb'

FileList["tasks/**/*.rake"].each { |fn| load fn }

desc "Default task prints the available targets."
task :default do
  sh %{rake -T}
end