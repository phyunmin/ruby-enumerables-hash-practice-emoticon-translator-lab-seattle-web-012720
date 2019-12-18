# require modules here
require 'pp'
def load_library(path)
  # code goes here
  require "yaml"
  data = []
  data = YAML.load_file(path)
  
  hash = {"get_meaning":{}, "get_emoticon":{}}
  data.each do |meanings, emoticons|
    hash[:get_meaning][emoticons[1]] = meanings
    hash[:get_emoticon][emoticons[0]] = emoticons[1]
  end
  return hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  hash = load_library(path)
  if(hash[:get_emoticon][emoticon] == nil)
    value = ""
  value = hash[:get_emoticon][emoticon]
  return value
end

def get_english_meaning
  # code goes here
end