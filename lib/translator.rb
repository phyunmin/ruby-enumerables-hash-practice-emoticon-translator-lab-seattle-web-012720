# require modules here

def load_library(path)
  # code goes here
  require "yaml"
  list = YAML.load_file(path)
  pp list
  return list
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end