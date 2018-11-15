class MiClase
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def show
    puts @name
  end

  def self.saludar
    "Hola! Soy la clase #{name}"
  end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar
