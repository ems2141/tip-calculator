require 'spec_helper'
require_relative '../lib/tip_calculator'

describe TipCalculator do
  it 'manipulates one person' do
    staff_data =
        [{
            "id" => 3135,
            "first_name" => "Ila",
            "last_name" => "Nikolaus",
            "job_title" => "server"
        }]


    sales_data =
        [{
            "server_id" => 3135,
            "date" => "2014-05-06",
            "total" => 2404,
            "tip" => 385
        }]


    expected_value = TipCalculator.new(staff_data, sales_data).calculate
    actual = {"Ila Nikolaus" => "$3.85"}

    expect(expected_value).to eq actual

  end
  it 'returns a person\'s full name and their tip amount' do
    staff_data = [
        {
            "id" => 3135,
            "first_name" => "Ila",
            "last_name" => "Nikolaus",
            "job_title" => "server"
        },
        {
            "id" => 4029,
            "first_name" => "Cierra",
            "last_name" => "Johnson",
            "job_title" => "server"
        }
    ]

    sales_data = [
        {
            "server_id" => 3135,
            "date" => "2014-05-06",
            "total" => 2404,
            "tip" => 385
        },
        {
            "server_id" => 3135,
            "date" => "2014-05-06",
            "total" => 2212,
            "tip" => 398
        },
        {
            "server_id" => 4029,
            "date" => "2014-05-06",
            "total" => 3005,
            "tip" => 451
        }
    ]

    expected_value = TipCalculator.new(staff_data, sales_data).calculate
    actual = {
        "Ila Nikolaus" => "$7.83",
        "Cierra Johnson" => "$4.51"
    }

    expect(expected_value).to eq actual
  end

end