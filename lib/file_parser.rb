require 'json'


class FileParser
  def get_data(path)
    data = File.read(path)
    JSON.parse(data, symbolize_names: true)
  end
end