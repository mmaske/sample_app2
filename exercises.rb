##1##

def string_shuffle(s)
  s.split('').shuffle.join
end
string_shuffle("foobar")

##2##
 class String
   def shuffle
     self.split('').shuffle.join
   end
 end
"foobar".shuffle

#########################################################################################
## Create three hashes called person1, person2, and person3, with first and last names ##                #
## under the keys :first and :last. Then create a params hash so that                  ##               # #
## params[:father] is person1, params[:mother] is person2, and                         ##              # # #
## params[:child] is person3. Verify that, for example, params[:father][:first]        ##             # # # #
## has the right value.                                                                ##            # # # # #
#########################################################################################                #
                                                                                                         #
person1 = { :first => "Peter", :last => "Meyer"}                                                       # # #
person2 = { :first => "Petra", :last => "Meyer"}
person3 = { :first => "Paul", :last => "Meyer"}

params = Hash.new
params = {:father => person1, :mother => person2, :child => person3}

puts params[:father][:first]
puts params[:mother][:first]                                                                                                                                                                              # #

h1 = {:a => 100, :b => 200}
h2 = {:b => 254, :c => 300}

h3 = h1.merge(h2){|key, oldval, newval| newval - oldval}

print h1, "\n", h2,"\n", h3

h4 = h1.merge(h2){|key, oldval, newval| newval == oldval }

print h1, "\n", h2,"\n", h3,"\n", h4
