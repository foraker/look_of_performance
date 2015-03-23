module LookOfPerformance
  class LogSubscriber < ActiveSupport::LogSubscriber
    def process_action(event)
      output = Output.new(event.duration)

      return unless output.sendable?
      info output.to_s
    end
  end
end

LookOfPerformance::LogSubscriber.attach_to :action_controller
