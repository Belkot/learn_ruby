def measure(count=1)
  start_time = Time.now
  count.times { yield }
  (Time.now - start_time) / count
end
