require_relative '../http_response'
require 'rspec'
require 'net/http'
require 'uri'

describe HttpResponse do

  let(:input) {
    <<-INPUT
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 06 May 2014 02:17:16 GMT
Content-Type: text/html
Last-Modified: Sun, 27 Apr 2014 04:03:41 GMT
Transfer-Encoding: chunked
Connection: keep-alive
Content-Encoding: gzip

<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8" />
  <meta name="description" content="should i test private methods?" />
  <meta name="keywords" content="test,private,methods,oo,object,oriented,tdd" />
  <title>Should I Test Private Methods?</title>
</head>
<body>
  <div style='font-size: 96px; font-weight: bold; text-align: center; padding-top: 200px; font-family: Verdana, Helvetica, sans-serif'>NO</div>
  <!-- Every time you consider testing a private method, your code is telling you that you haven't allocated responsibilities well.  Are you listening to it? -->
</body>
</html>
    INPUT
  }

  let(:response) { HttpResponse.new(input) }

  it 'can return the status code' do
    expect(response.status_code).to eq 200
  end

  it 'should be able to return a hash of headers, where the strings are keys' do
    expect(response.headers).to eq({
                                     'Server' => 'nginx/1.4.6 (Ubuntu)',
                                     'Date' => 'Tue, 06 May 2014 02:17:16 GMT',
                                     'Content-Type' => 'text/html',
                                     'Last-Modified' => 'Sun, 27 Apr 2014 04:03:41 GMT',
                                     'Transfer-Encoding' => 'chunked',
                                     'Connection' => 'keep-alive',
                                     'Content-Encoding' => 'gzip', })
  end

  it 'should be able to return the response body as a string' do
    expected_body =
      <<-BODY
<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8" />
  <meta name="description" content="should i test private methods?" />
  <meta name="keywords" content="test,private,methods,oo,object,oriented,tdd" />
  <title>Should I Test Private Methods?</title>
</head>
<body>
  <div style='font-size: 96px; font-weight: bold; text-align: center; padding-top: 200px; font-family: Verdana, Helvetica, sans-serif'>NO</div>
  <!-- Every time you consider testing a private method, your code is telling you that you haven't allocated responsibilities well.  Are you listening to it? -->
</body>
</html>
    BODY
    expect(response.body).to eq expected_body
  end
end