require 'open-uri'
require 'pry'
require 'nokogiri'
require 'require_all'
require 'launchy'

require_all 'lib/.'

module BbcNewsCliGem
  RootAddress = "http://www.bbc.com"
end
