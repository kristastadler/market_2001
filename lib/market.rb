class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor_name)
    vendors << vendor_name
  end

  def vendor_names
    vendor_names = []
    vendors.each do |vendor|
      vendor_names << vendor.name
    end
    vendor_names
  end

  def vendors_that_sell(item)
    vendors_that_sell = []
    vendors.each do |vendor|
      if vendor.inventory.has_key?(item) == true
        vendors_that_sell << vendor
      end
    end
    vendors_that_sell
  end

  def total_inventory
    total_inventory = {}
      vendors.each do |vendor|
          vendor.inventory.each_key do |key|
            total_inventory.has_key[key]?
              if false
                total_inventory[key] = {
                                      quantity: vendor.inventory[1],
                                      vendors: [vendor]
                                      }
              else
                total_inventory[key][:quantity] += vendor.inventory[1]
                total_inventory[key][:vendors]  << vendor
            end
        end
      end 
  total_inventory
  end
end
