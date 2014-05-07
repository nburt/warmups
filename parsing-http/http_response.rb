class HttpResponse

  def initialize(response)
    @response = response
    @response_array = @response.split("\n")
  end

  def status_code
    @response.byteslice(9, 3).to_i
  end

  def headers
    headers = Hash.new
    @response_array[1..(whitespace_index - 1)].each do |line|
      key_value = line.split(": ", 2)
      key = key_value[0]
      value = key_value[1]
      headers[key] = value
    end
    headers
  end

  def body
    @response_array[(whitespace_index + 1)..-1].join("\n") + "\n"
  end

  private

  def whitespace_index
    @response_array.find_index("")
  end

end