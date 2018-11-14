def clock_angle(time)
time=time.split(':')
hour=time[0].to_i+time[1].to_f/60
min=time[1].to_i
h_degree=30*hour
m_degree=6*min
if (h_degree - m_degree).abs > 180
  if h_degree > m_degree
    (360-h_degree + m_degree).abs
  else
    (360-m_degree + h_degree).abs
  end
else
  (h_degree - m_degree).abs
end
end
