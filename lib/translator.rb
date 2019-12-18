# require modules here

def load_library
  # code goes here
  require "yaml"
  list = YAML.load_file('emoticons.yml')
  
  pp list
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end