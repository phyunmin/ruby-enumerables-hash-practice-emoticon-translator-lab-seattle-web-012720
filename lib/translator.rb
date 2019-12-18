# require modules here
require 'pp'
def load_library(path)
  # code goes here
  require "yaml"
  data = []
  data = YAML.load_file(path)
  
  hash = {get_meaning:{}, get_emoticon:{}}
  data.each_pair do |key, array|
    if(hash[:get_meaning][array[1]]==nil)
      hash[:get_meaning]={}
      hash[:get_meaning][array[1]] = key.to_s
    else
      hash[:get_meaning][array[1]] = key.to_s
    end
    
    if(hash[:get_emoticon][array[0]]==nil)
      hash[:get_emoticon]={}
      hash[:get_emoticon][array[0]] = array[1]
    else
      hash[:get_emoticon][array[0]] = array[1]
    end
  end
  pp hash
  return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end