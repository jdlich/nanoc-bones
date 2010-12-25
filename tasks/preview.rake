desc "Preview site in Firefox."
task :preview do
  # check to see if output/index.html exists
  # if it doesn't, run 'rake build'
  
  system "open -a Firefox output/index.html"
  system "nanoc watch"
end