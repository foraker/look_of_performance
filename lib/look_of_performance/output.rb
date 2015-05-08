module LookOfPerformance
  class Output < String
    def initialize(duration, config = ::LookOfPerformance::Configuration)
      self.duration = duration
      self.config   = config
    end

    def to_s
      str = (1..times).map { |_| scolding }.join(delimiter)
      
      return "" if str.empty?
      
      [prefix, str, suffix].join(delimiter)
    end

    def sendable?
      duration > limit
    end

    private

    attr_accessor :duration, :config

    def times
      (duration / limit).floor
    end

    def limit
      config.limit
    end

    def scolding
      config.scolding
    end

    def delimiter
      config.delimiter
    end
    
    def prefix
      config.prefix
    end
    
    def suffix
      config.suffix
    end
  end
end
