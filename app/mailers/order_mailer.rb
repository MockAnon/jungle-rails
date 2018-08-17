class OrderMailer < ApplicationMailer

  default from: 'no-reply@jungle.com'

  def order_email(order)
    @order = order
    # @user = params[:user]x
    # @url  = 'http://localhost:3000/orders/3'
    mail(to: @order.email, subject: @order.id)
  end
end

