# require modules here
require 'pp'
def load_library(path)
  # code goes here
  require "yaml"
  data = []
  data = YAML.load_file(path)
  
  hash = {"get_meaning":{}, "get_emoticon":{}}
  data.each do |meanings, emoticons|
    emoticons.each
    if(hash[:get_meaning][emoticons[1]]==nil)
      hash[:get_meaning]={}
      hash[:get_meaning][emoticons[1]] = meanings.to_s
    else
      hash[:get_meaning][emoticons[1]] = meanings.to_s
    end
    
    if(hash[:get_emoticon][emoticons[0]]==nil)
      hash[:get_emoticon]={}
      hash[:get_emoticon][emoticons[0]] = emoticons[1]
    else
      hash[:get_emoticon][emoticons[0]] = emoticons[1]
    end
  end
  pp data.length
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