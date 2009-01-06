class Nzb
  # A class for holding all parts of a file
  class Fileset
  
    attr_accessor :files
    
    def initialize
      @parts = []
    end
  
  end
  
end