module Nanoc3::Helpers
  
  module Formatting
    
    # items have to numbered sometimes for order purposes
    # and this strips the number out of the path
    def path_to item
      item.identifier.gsub(/\/\d\d_/,'/')
    end 
  end
end