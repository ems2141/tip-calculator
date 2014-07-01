class TipCalculator

  def initialize(staff_data, sales_data)
    @staff = staff_data
    @sales = sales_data
  end

  def calculate
    results = {}
    if @staff["id"] == @sales["server_id"]
      tip_value = @sales["tip"]
      results[@staff["first_name"] + " " + @staff["last_name"]] = "$%.2f" % (tip_value/100.0)
    end
    results
  end
end