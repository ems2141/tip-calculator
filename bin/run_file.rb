require_relative '../lib/tip_calculator'
require 'json'

sales_data = File.read('/Users/elsaschneiders/gSchoolWork/tip-calculator/data/sales.json')
parsed_sales_data = JSON.parse(sales_data)

staff_data = File.read('/Users/elsaschneiders/gSchoolWork/tip-calculator/data/staff.json')
parsed_staff_data = JSON.parse(staff_data)

p TipCalculator.new(parsed_staff_data,  parsed_sales_data).calculate
