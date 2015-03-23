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
  end
end
