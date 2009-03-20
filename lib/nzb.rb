%w(rubygems nokogiri).each { |lib| require lib }

# = Overview:
# A library for parsing nzb files using libxml for speed
# ---
# = License:
# Author:: Kieran Johnson
# Copyright:: November, 2008
# License:: Ruby License
# ---
# = Usage:
#   require 'rubygems'
#   require 'kieranj-nzb'
#   
#   n = Nzb.parse(file) # fileset

module Nzb

  module VERSION
    MAJOR = 0
    MINOR = 0
    TINY = 1

    STRING = [MAJOR, MINOR, TINY].join('.')

    def self.to_s
      STRING
    end

  end

  %w(file fileset segment parser).each do |lib|
    require ::File.join(::File.dirname(__FILE__), 'nzb', lib)
  end
  
  class << self
    
    def parse(file)
      Parser.new(file).parse
    end
  
  end

end