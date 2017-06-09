desc "Syntax check Jekyll generated HTML"
task :html_check => [:build] do
  system "htmlproofer #{RESULTS} --only-4xx --check-html --url-ignore '#'"
end
