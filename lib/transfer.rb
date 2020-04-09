class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? == true
      sender.balance -= sender.amount
      receiver.balance += sender.amount
    else
      "Transaction rejected. Please check your account balance."
      @status == "rejected"
    end
  end

end
