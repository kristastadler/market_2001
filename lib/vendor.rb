class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if inventory.has_key?(item) == false
        inventory[item] = 0
    else
      inventory[item]
    end
  end

  def stock(item, quantity)
    if inventory.has_key?(item) == true
      inventory[item] += quantity
    else
      inventory[item] = quantity
    end
  end

  def potential_revenue
    total_revenue = 0
    inventory.each do |item|
      total_revenue += (item[0].price * item[1])
    end
    total_revenue
  end

end
