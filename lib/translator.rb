# require modules here
require 'pp'
def load_library(path)
  # code goes here
  require "yaml"
  data = {}
  data = YAML.load_file(path)
  
  hash = {get_meaning:{}, get_emoticon:{}}
  data.each do |key, array|
    if(hash[:get_meaning][array[1]]==nil)
      hash[:get_meaning]={}
      hash[:get_meaning][array[1]] = key.to_s
    else
      hash[:get_meaning][array[1]] = key.to_s
    end
  end
  pp data
  pp hash
  return hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end