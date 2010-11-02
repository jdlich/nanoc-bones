desc "Copies assets into output."
task :assets do
  system "rsync -gprt --partial assets/ output"
end