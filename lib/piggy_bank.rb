class PiggyBank
  def initialize
    @amount = 0
  end

  def insert(amount)
    @amount += amount
  end

  def break
    @amount
  end

  def shake
    @amount.zero? ? 'Silence...' : 'Cling!'
  end
end