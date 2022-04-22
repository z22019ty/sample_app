require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(
    time: 5, # default 5
    warmup: 2 # default 2
  )

  hash = {key: 'value'}

  x.report('Integer') { hash[1] }
  x.report('string') { hash['key'] }
  x.report('Symbol') { hash[:key] }

  x.compare!
end