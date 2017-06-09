task :link_check => [:build] do
  system "htmlproofer #{RESULTS} --only-4xx"
end
