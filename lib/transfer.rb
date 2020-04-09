class Transfer
  attr_accessor :amount

  def initialize(sender, receiver, amount)
    @amount = amount
    @status = "pending"
    @sender = []
    @receiver = []

  end





end
