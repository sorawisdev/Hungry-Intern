class SubscriberMailer < ApplicationMailer
  def welcome_subscriber
    attachments.inline["logo-nav.svg"] = File.read("#{Rails.root}/app/assets/images/logo-nav.svg")
    @subscriber = params[:subscriber]
    mail(to: @subscriber.email, subject: 'Welcome to Subscriber!!')
  end

  def new_recipe_mailers(recipe)
    attachments.inline["logo-nav.svg"] = File.read("#{Rails.root}/app/assets/images/logo-nav.svg")
    @recipe = recipe
    emails = Subscriber.pluck(:email)
    mail(to: emails, subject: 'New recipe')
  end

end