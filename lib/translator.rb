# require modules here
require 'pp'
def load_library(path)
  # code goes here
  require "yaml"
  data = []
  data = YAML.load_file(path)
  
  hash = {"get_meaning":{}, "get_emoticon":{}}
  data.each do |meanings, emoticons|
    hash[:get_emoticon][emoticons[0]] = emoticons[1]
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