class YUICompressor < Nanoc3::Filter
  
  identifier :yui_compressor
  
  def run content, params={}
    require 'yui/compressor'
    
    YUI::JavaScriptCompressor.new.compress(content)
  end
end