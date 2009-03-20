module Nzb
  # A class for holding all parts of a file
  class Fileset
  
    attr_accessor :files
    
    def initialize
      @files = []
    end
    
    def add_file(file)
      @files << file
    end
  
  end
  
end