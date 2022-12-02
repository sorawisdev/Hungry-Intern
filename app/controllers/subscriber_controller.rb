class SubscriberController < ApplicationController

  def create_subscriber_info
    @new_subscriber = Subscriber.new(subscriber_params)
    if @new_subscriber.save
      SubscriberMailer.with(subscriber: @new_subscriber).welcome_subscriber.deliver_now
      redirect_to root_path
    end
  end

  private
    def subscriber_params
      params.require(:subscriber).permit(:name, :email)
    end
end