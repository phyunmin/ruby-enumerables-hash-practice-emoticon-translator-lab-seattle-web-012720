# require modules here

def load_library(path)
  # code goes here
  require "yaml"
  data = {}
  hash = {}
  data = YAML.load_file(path)
  
  data.each do |key, array|
    if(hash[:get_meaning][array[1]]==nil)
      hash[:get_meaning][array[1]] = key.to_s
    else
    end
  end
  
  return list
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end