
mouvements = "L1,R1,L8,R7,L2,R2,L2,R3,L5,R7,L5".split(',')
#puts test
directions = mouvements.map { |x| x[0] }
#puts directions
distance = mouvements.map { |x| x[1].to_i}
#puts distance

noms = ["Brynkris","Garrovan","Anorzrak","Urgnaris","Brythidris","Krynnnyn","Rahselor","Drethmarn","Goraththyris","Margyth"]


def day1(directions, distances, noms)
  position = 0;
  for i in 0...directions.length
    if directions[i] == "L"
      position -= distances[i]
      position = [position, 0].max
    elsif directions[i] == "R"
      position += distances[i]
      position = [position, noms.length-1].min

    end
  end
  puts noms[position]
end

day1(directions, distance, noms)
