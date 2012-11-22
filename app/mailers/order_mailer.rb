class OrderMailer < ActionMailer::Base
  default from: "fruitstand@RoR.dev"

  def order_notification(user)
    @user = user
    #raise user.inspect
    mail(:to => @user.email, :subject => "Order Processed")
  end

end
