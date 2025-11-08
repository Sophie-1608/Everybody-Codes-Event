noms = ["Pyryth","Felmarzal","Balthdrith","Vaelnoris","Thyrossarix","Zyrvor",
        "Tironar","Helkynar","Talxelor","Cynvaralar","Gavmal","Shaelkael",
        "Malgaz","Braeynn","Xanpyxis","Skarpyxis","Myrjoris","Zallorath",
        "Elaroris","Thymvoran"]
#puts noms
mouvements = "L8,R8,L11,R12,L14,R13,L9,R18,L15,R12,L5,R7,L5,R18,L5,R9,L5,R19,L5,R18,L18,R13,L17,R11,L16,R16,L17,R15,L7".split(",")
direction = mouvements.map { |x| x[0] }
distance = mouvements.map { |x| x[1..].to_i}
#puts mouvements


def day1_chall2(direction, distance, noms)
  position = 0
  for i in 0...direction.length
    if direction[i] == "R"
      position = (position + distance[i]) % noms.length
    elsif direction[i] == "L"
      position = (position - distance[i]) % noms.length
    end
  end
  puts noms[position]
end



day1_chall2(direction, distance, noms)
