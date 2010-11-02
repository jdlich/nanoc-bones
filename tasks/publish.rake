desc "Uploads site to the server."
task :publish do
  source       = 'output/'
  
  if ENV['dev']
    destination = ''
  else
    destination = ''
  end
  
  puts "Publishing site..."
  system "rsync -gprtv -e ssh --exclude-from $HOME#{exclude_file} #{source} #{destination}"
  puts "Site published."
end