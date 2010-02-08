namespace :new do
  
  task :item do
    if ENV['path'].nil?
      $stderr.puts('You need to specify the path, e.g. rake new:item path=/item/path/')
      break
    end

    # create item
    site = Nanoc3::Site.new('.')
    site.data_sources[0].create_item(
      
      # content
      %{<h1>Title</h1>},
      
      # attributes 
      { :title => 'Title',
        :section => ''
      },
      
      # path
      ENV['path'].cleaned_identifier
    )
  end
end