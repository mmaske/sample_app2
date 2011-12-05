infinity = 1.0/0
z = infinity

# a = Startknoten
# i = Menge aller Knoten a element i
# MK = Menge der markierten Knoten
# h = Knoten aus MK mit geringster Enfernung zum Folgeknoten
# c[i][j] = Éntfernungsmatrix


c=Array.new(6) { Array.new(6) }

c=[[0, 0, 0, 0, 0, 0],
   [0, 0, 20, z, 10, z],
   [0, z, 0, 20, z, 50],
   [0, z, z, 0, z, 10],
   [0, z, 20, z, 0, 50],
   [0, z, z, 20, z, 0]]

mk=Array.new() #Array der markierten Knoten
d=Array.new() #Array der aktuell kuerzesten Distanzen

d=[0, 0, z, z, z, z]
dh=Array.new()
dh=[0, 0, 0, 0, 0, 0]
r=Array.new(6) #Array der Vorgaenger von i


1.upto(5) { |i|


  1.upto(5) { |j|
    if (c[i][j]>0 && c[i][j]<z)
      mk<<j
    end

  }
  puts "mk:#{mk}"
  puts "i:#{i}"
for h in mk do
                              puts "####### d[#{h}]:#{d[h]}>dh[#{i}]:#{dh[i]}+c[#{i}][#{h}]:#{c[i][h]} ##########"


    if (d[h]>dh[h]+c[i][h] && c[i][h]>0)
      d[i]=dh[h]+c[i][h]
      r[h]=i
      dh[h]=d[h]

                             puts "c[#{i}][#{h}]:#{c[i][h]}"
                             puts "dh[#{h}]:#{dh[h]}"
      mk.delete(h)

    end
end
    #    puts "\n"
#    puts "mk:#{mk}"
#  end
#  puts "mk:#{mk}"
#  puts "--------------------------------"

#mk.clear
}


puts "=================================================="
puts "dh=#{dh}"
puts "d=#{d}"
puts "r=#{r}"
puts "=================================================="
#puts "=================================================="
#puts "=================================================="
#puts "=================================================="

#puts "das ist dh:#{d}"
#puts "\n"
#puts "das ist r:#{r}"

