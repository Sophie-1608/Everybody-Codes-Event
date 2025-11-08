noms = "Dreththyn,Thazurath,Dalkael,Krynndrith,Eadirin,Garacris,Urithoris,Xyridris,Iskarmirath,Glynnoth,Eadlorath,Thalsar,Sylxeth,Sarlyr,Helryn,Morngaz,Nyssjor,Thardren,Felnxith,Brylketh,Galphor,Ryssfeth,Lorvyr,Xannoris,Falvalir,Shaelzar,Adalnoris,Anororyn,Havbryn,Lazireldrin".split(",")
mouvements = "L20,R41,L43,R36,L25,R20,L31,R49,L20,R9,L25,R11,L19,R42,L30,R21,L14,R9,L47,R20,L5,R22,L5,R17,L5,R32,L5,R43,L5,R33,L5,R38,L5,R20,L5,R18,L5,R31,L5,R21,L36,R44,L25,R48,L13,R47,L34,R9,L15,R8,L42,R41,L16,R6,L26,R39,L35,R32,L42".split(",")
#puts mouvements
direction = mouvements.map{|x| x[0]}

distance = mouvements.map{|x| x[1..].to_i}

def echange(i, j, nom)
  tmp = nom[i]
  nom[i] = nom[j]
  nom[j] = tmp
end


def day1_chall3(direction, distance, noms)
  for i in 0...direction.length
    position = 0
    if direction[i] == "R"
      position = (position + distance[i]) % noms.length
    elsif direction[i] == "L"
      position = (position - distance [i]) % noms.length
    end
    echange(0, position, noms)
  end
  puts noms[0]
end

day1_chall3(direction, distance, noms)
