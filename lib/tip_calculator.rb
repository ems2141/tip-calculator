class TipCalculator

  def initialize(staff_data, sales_data)
    @staff = staff_data
    @sales = sales_data
  end

  def calculate
    results = {}
    @staff.each do |staff|
      @sales.each do |sale|
        if staff["id"] == sale["server_id"]
          tip_value = sale["tip"]
          if results[staff["first_name"] + " " + staff["last_name"]].nil?
            results[staff["first_name"] + " " + staff["last_name"]] = "$%.2f" % (tip_value/100.0)
          else
            (results[staff["first_name"] + " " + staff["last_name"]].gsub("$", "").to_f*100) + tip_value
            results[staff["first_name"] + " " + staff["last_name"]] = "$%.2f" % (((results[staff["first_name"] + " " + staff["last_name"]].gsub("$", "").to_f*100) + tip_value)/100)
          end
        end
      end
    end
    results
  end
end
