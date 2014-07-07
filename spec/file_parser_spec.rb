require 'spec_helper'
require_relative '../lib/file_parser'

describe FileParser do

  it 'parses files' do
    parsed = FileParser.new.get_data('/Users/elsaschneiders/gSchoolWork/tip-calculator/spec/test_data.json')
    expect(parsed).to eq ({foo: "bar"})
  end
end