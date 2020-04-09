require 'pry'

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
    if valid? == true && amount < sender.balance
      binding.pry
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end

  end

end
