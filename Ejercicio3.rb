
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end


class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def run(velocidad)
  	t = 10/velocidad
  	puts "Distancia: 10 metros , tiempo: #{t}"
  end

end


class Cricket
  include Action
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def run
  	t = 10/velocidad
    puts "Distancia: 10 metros , tiempo: #{t}"
  end

  def chirp
  	(rand(90)+10).times do |k|
  		puts "Chirp… chirp!!"
  	end
  end
end
  
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
peter.jump
jiminy.jump