infinity = 1.0/0
z=infinity

c=Array.new(6) { Array.new(6) } #Kostenmatrix
c=[[0, 0, 0, 0, 0, 0],
   [0, 20, z, 10, z, z],
   [0, z, 0, 20, z, 50],
   [0, z, z, 0, z, 10],
   [0, z, 20, z, 0, 50],
   [0, z, z, 20, z, 0]]

