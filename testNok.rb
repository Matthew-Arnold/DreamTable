require 'rubygems'
require 'nokogiri'
require 'open-uri'

#page = Nokogiri::HTML(open("http://www.google.com"))
Shoes.app{
  button("Did it load?"){
    alert("Sure did!")
  }
}
