# Inicio letra o 
puts "a. Método letra_o(n)"
# Cover debe darnos num"*", por lo que se usará para arriba y para abajo.
def cover (num)
    num.times do |i|
         print "* "
    end 
    print "\n"
end 
# Middle nos dará asteríscos, espacios vacios. La razón por la que la linea 12 tiene -2 es porque ya tenemos los extremos hecho a mano.
def middle(num)
    print "* "
    (num-2).times do |i|
        print "  "
    end
    print "* "
    print "\n"
end
def letra_o(num)
    cover (num)
    (num-2).times do |i|
        middle(num)
    end 
    cover(num)
end
letra_o(5)
# Fin letra o

# Inicio letra I
puts "b. Método letra_i(n)"
# n = 5
# *****
#   *
#   *
#   *
# *****
# 0 0 1 0 0 i == 0 j == 2 j > num/2 || or j < num/2
# 0 0 1 0 0 i == 1 j == 2
# 0 0 1 0 0 i == 2 j == 2

def middle_i(num)
    (num-2).times do |i|
        num.times do |j|
            # if (j > num/2) || (j < num/2)
            #     print "  "
            # else
            #     print "* "
            # end 
            if (j == num/2)
                print "* "
            else 
                print "  "
            end
        end
        print "\n"
    end
end 

def letra_i(num)
    cover(num)
    middle_i(num)
    cover(num)
end 
letra_i(5)
# Fin Letra I

# Incio Letra Z
puts "c. Método letra_z(n)"
def letra_z(n)
    contador = 2
    n.times do |i|
        if i ==0 or i==n-1
            for j in 1..n do
                print "*"
            end
            print "\n"
        else
            for j in 1..(n-contador) do
                print "\s"
           end
           print "*\n"
           contador +=1
        end
    end
end
letra_z(5)
# Fin Letra Z

# Inicio Letra X
puts "d. Método letra_x(n)"
# n = 5
# *   *
#  * *
#   *
#  * *
# *   *
# 1 0 0 0 1 i == 0 j == 0 || i == 0 j == 4
# 0 1 0 1 0 i == 1 j == 1 || i == 1 j == 3
# 0 0 1 0 0 i == 2 j == 2 || 1 == 2 j == 2
# 0 1 0 1 0 i == 3 j == 3 || 1 == 3 j == 1
# 1 0 0 0 1 i == 4 j == 4 || 1 == 4 j == 0

def letra_x(num)
    num.times do |i|
        num.times do |j|
            if i==j || j == num-1-i
                print "* "
            else  
                print "  "  
            end
        end 
        print "\n"
    end
end  

letra_x(5)
# Fin  Letra X

# Inicio Número 0
puts "e. Método numero_cero(n)"
# n = 5

# 1 1 1 1 1 i==0 j==0 || i==0 j==1 || i==0 j==2 || i==0 j==3 || i==0 j==4 
# 1 1 0 0 1 i==1 j==0 || i==1 j==1 || i==1 j==4
# 1 0 1 0 1 i==2 j==0 || i==2 j==2 || i==2 j==4
# 1 0 0 1 1 i==3 j==0 || i==3 j==3 || i==3 j==4
# 1 1 1 1 1 i==4 j==0 || i==4 j==1 || i==4 j==2 || i==4 j==3 || i==4 j==4

def numero_cero(n)
    n.times do |i|
        if i ==0 or i==n-1
            for j in 1..n do
                print "* "
            end
            print "\n"
        else
            n.times do |j|
                if j==0
                    print "* "
                elsif i==j
                    print "* "
                elsif j==n-1
                    print "*\n"
                else
                    print "  "
                end
            end
        end
    end
end
numero_cero(5)
# Fin Número 0

# Inicio Método Navidad
puts "f. Método navidad(n)"

# 0 0 0 1 0 0 0 i==0 j==3
# 0 0 1 0 1 0 0 i==1 j==2 or i==1 j==4
# 0 1 0 1 0 1 0 i==2 j==1 or i==2 j==3 or i==2 j==5
# 1 0 1 0 1 0 1 i==3 j==0 or i==3 j==2 or i==3 j==4 or i==3 j==6
# 0 0 0 1 0 0 0 i==4 j==3
# 0 0 0 1 0 0 0 i==5 j==3
# 0 1 0 1 0 1 0 i==6 j==1 or i==6 j==3 or i==6 j==5

def navidad(n)
    n.times do |i|
        n.times do |j|
            if i<=n/2
                # código correspondiente a la copa del arbol
                if i%2==0
                    if j==n/2-i or j==n/2+i or j==n/2
                        print "*"
                    else
                        print "\s"
                    end
                else
                    if j%2==0 and (j>=n/2-i and j<=n/2+i)
                        print "*"
                    else
                        print "\s"
                    end
                end
            else
                # código correspondiente al tronco del arbol
                if j==n/2 and i!=n-1
                    print "*"
                elsif i==n-1
                    if j==n/2-2 or j==n/2 or j==n/2+2
                        print "*"
                    else
                        print "\s"
                    end                    
                else
                    print "\s"
                end                
            end
        end
        print "\n"
    end
end
navidad(7)
# Fin Método Navidad