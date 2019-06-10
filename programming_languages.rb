require 'pry'

=begin 
  languages = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }
   
    }
  }

  to 
  {
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
=end

def reformat_languages(languages)
  # your code here
  new_hash = {}
  oolang = []
  #contains ruby, javascript, python, java
  funclang = []
  #contains clojure, erlang, scala, javascript
  languages.each do |majorcat, languagedata|
    languagedata.each do |language, attributes|
      new_hash[language] = attributes
      if majorcat == :oo 
        oolang << language
      elsif majorcat == :functional
        funclang << language
      end

      if oolang.include?(language) && funclang.include?(language)
        new_hash[language][:style] = [:oo, :functional]
      elsif funclang.include?(language)
        new_hash[language][:style] = [:functional]
      elsif oolang.include?(language)
        new_hash[language][:style] = [:oo]
      end
    end
  end
  new_hash
end
