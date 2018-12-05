class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.create_confirmation.subject
  #
  def create_confirmation(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Product created!')
  end

  def update_confirmation(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Product updated!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.delete_confirmation.subject
  #
  def delete_confirmation(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Product deleted!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.error.subject
  #
  def error(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'An error occoured')
  end
end
