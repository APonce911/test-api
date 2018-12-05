# Preview all emails at http://localhost:3000/rails/mailers/product_mailer
class ProductMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/create_confirmation
  def create_confirmation
    ProductMailer.create_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/delete_confirmation
  def delete_confirmation
    ProductMailer.delete_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/product_mailer/error
  def error
    ProductMailer.error
  end

end
