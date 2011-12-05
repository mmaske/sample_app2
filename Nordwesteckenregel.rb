def nordwestecke
  i=1
  j=1
  x=Array.new(4) { Array.new(5) }

  a=Array.new(4) #Angebotsmengen von Standort i
  a=[0, 10, 8, 7]

  b=Array.new(5) #Nachfragemengen von Standort j
  b=[0, 6, 5, 8, 6]
  n=a.length-1
  m=b.length-1
  puts "###############################################################"
  puts "\n"
    1.upto(n) { |i|
    1.upto(m) { |j|
      if a[i]>0 && b[j]>0
        x[i][j]=[a[i], b[j]].min

        print "\n"
        a[i]=a[i]-x[i][j]

        b[j]=b[j]-x[i][j]
        print "Verbleibendes Angebot","\t""#{a}", "\n", "Verbleibende Nachfrage ","\t","#{b}", "\n"
        1.upto(n) { |i|
          print " "
          1.upto(m) { |j|
           print x[i][j], "  "
          }
          print "\n"
        }
        print "\n" "Neuer Wert x=#{x[i][j]} in i=#{i} und j=#{j} hinzugefuegt!" "\n" "-------------------------------------------"
      end
    }
  }
  puts "\n"
  puts "##########################################################"
end

puts nordwestecke




