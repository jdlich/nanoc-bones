desc "Builds the site into output."
task :default => [:assets, :compile]

desc "Compiles HTML pages."
task :compile do
  system "nanoc compile"
end