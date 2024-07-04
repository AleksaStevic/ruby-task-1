(0..100)
  .select { |i| i % 3 == 0 }
  .each { |i| puts i }