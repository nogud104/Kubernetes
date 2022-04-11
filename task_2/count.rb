counts = Hash.new(0)

1000.times do
  # output = `curl -s -H "Host: ingress-nginx.test" http://192.168.49.2 | grep 'pod namespace'`
  output = `curl -s -H "canary: always" -H "Host: ingress-nginx.test" http://localhost`
  counts[output] += 1
end

puts counts