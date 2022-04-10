counts = Hash.new(0)

1000.times do
  output = `curl -s -H "Host: ingress-nginx.test" http://192.168.49.2 | grep 'pod namespace'`
  counts[output.strip.split.last] += 1
end

puts counts