desc "Copies assets into output."
task :copy_assets do
  system "rsync -gprt --partial assets/ output"
end

desc "Compiles html pages."
task :compile do
  system "nanoc3 compile --force"
end

desc "Compresses html pages."
task :compress do
  compiled_items = Dir['output/**/index*']
  
  compiled_items.each do |item|
    html = File.read(item)
    html = html.gsub(/<!--(\s|\w)*-->/,'').gsub(/\n/,'').gsub(/>\s*</,">#{$1}<")
    
    File.open(item,'w+') { |file| file.write(html) }
  end
end

desc "Builds the site into output."
task :build => [:copy_assets, :compile, :compress]

desc "Deletes compiled site minus assets."
task :clean do 
  system "rm -rf output/*"
end

task :default => :build