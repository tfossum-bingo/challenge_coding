def climb_stairs
  puts("How many stairs?")
  n = gets.strip.to_i
  puts("The value was #{n}")
  return 1 if n == 1
  return 2 if n == 2

  fb = []
  fb[1] = 1
  fb[2] = 2

  3.upto(n) do |x|
    fb[x] = fb[x - 1] + fb[x - 2]
  end
  puts(fb)
  fb.last
end
climb_stairs