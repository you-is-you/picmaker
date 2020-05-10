class StackdriverController < ApplicationController
  def logs
    Rails.logger.add(Logger::INFO, "Hey, you triggered a custom log entry. Good job!")
    redirect_to "/", flash: { success: "Log message sent" }
  end

  def errors
    raise "This is an intentional exception."
  end
end
