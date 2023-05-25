require 'open3'
Given('I load google') do
  stdin, stdout, stderr, wait_thr = Open3.popen3('curl localhost:3333/status')
  puts stdout
end
When('I take a screenshot') do  
end

#https://stackoverflow.com/questions/690151/getting-output-of-system-calls-in-ruby
