# encoding: utf-8

module LookOfPerformance
  module Configuration
    def self.output
      @output || "ಠ_ಠ"
    end

    def self.output=(output)
      @output = output
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
