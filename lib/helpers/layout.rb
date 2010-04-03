module Nanoc3::Helpers
  
  module Layout
    
    # grab current year for copyright
    def current_year
      Time.now.year
    end
    
    # print required script tags for a given page
    def javascript scripts
      scripts = scripts.split(', ')

      scripts.map do |script|
        %{<script type="text/javascript" src="/scripts/#{script}.js"></script>}
      end
    end 
  end
end