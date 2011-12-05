infinity = 1.0/0
z = infinity

# a = Startknoten
# i = Menge aller Knoten a element i
# MK = Menge der markierten Knoten
# h = Knoten aus MK mit geringster Enfernung zum Folgeknoten
# c[i][j] = Éntfernungsmatrix



c=Array.new(6){ Array.new(6)}

c=[ [0, 0, 0,  0,  0,  0],
    [0, 0, 20, z,  10, z],
    [0, z, 0,  20, z, 50],
    [0, z, z,  0,  z, 10],
    [0, z, 20, z,  0, 50],
    [0, z, z,  20, z, 0]]

a=Array.new(6)

                                              #Array mit allen Knoten

mk=Array.new()                                #Array der markierten Knoten
mk=[1]
d=Array.new()                                 #Array der aktuell kuerzesten Distanzen

d=[z, 0, z, z, z, z]

r=Array.new(6)                                 #Array der Vorgaenger von i

m=mk.length

dh=Array.new()

#while !(mk==nil) do
  begin
    1.upto(5) { |i|
    1.upto(5) { |j|
    if (c[i][j]>0 && c[i][j]<z)
      mk<<j
    end
    }


    puts h


    puts "\n"
    puts "i:#{i}"
    print mk
    }


    end

#  end
