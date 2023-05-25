require('open3')
stdout, stderr, status = Open3.capture3('curl localhost:4444/status')
  puts stdout
