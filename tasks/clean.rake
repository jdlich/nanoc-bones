desc "Deletes compiled site minus assets."
task :clean do 
  system "rm -rf output/*"
end