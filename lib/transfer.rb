class Transfer
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
    @status = "pending"
    @sender = []
    @receiver = []

  end





end
