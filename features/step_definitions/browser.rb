require 'open3'
Given('I have a browser') do
  stdout, stderr, status = Open3.capture3('curl localhost:4444/status')
  puts stdout
  expect(status.success?).to be true
end

#https://stackoverflow.com/questions/690151/getting-output-of-system-calls-in-ruby
