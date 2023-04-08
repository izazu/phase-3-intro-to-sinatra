# config.ru

require 'rack'

app = Proc.new do |env|
  # Perform the calculations
  result1 = 1 + 2
  result2 = 2 + 5

  # Build the response
  status = 200
  headers = { 'Content-Type' => 'text/plain' }
  body = ["1 + 2 = #{result1}\n", "2 + 5 = #{result2}\n"]

  # Return the response
  [status, headers, body]
end

run app

