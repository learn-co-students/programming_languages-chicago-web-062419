require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, names|
    names.each do |name, type|
      if new_hash[name] == nil
        new_hash[name] = type
        new_hash[name][:style] = []
        new_hash[name][:style].push(style)  
      else
      new_hash[name][:style].push(style)
    end
  end
end
new_hash
end