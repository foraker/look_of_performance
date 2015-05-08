# encoding: utf-8

module LookOfPerformance
  module Configuration
    def self.scolding
      @scolding || "ಠ_ಠ"
    end

    def self.scolding=(scolding)
      @scolding = scolding
    end

    def self.delimiter
      @delimiter || " "
    end

    def self.delimiter=(delimiter)
      @delimiter = delimiter
    end

    def self.limit
      @limit || 100
    end

    def self.limit=(limit)
      @limit = limit
    end
    
    def self.prefix
      @prefix || ""
    end

    def self.prefix=(prefix)
      @prefix = prefix
    end
    
    def self.suffix
      @suffix || ""
    end
    
    def self.suffix=(suffix)
      @suffix = suffix
    end
  end
end
