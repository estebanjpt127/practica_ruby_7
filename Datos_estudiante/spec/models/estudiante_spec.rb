require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  it "is valid with valid attributes" do
    estudiante = Estudiante.new(nombres: "Juan", apellidos: "Pérez", carrera: "Ingeniería", carnet: "2024001")
    expect(estudiante).to be_valid
  end

  it "is not valid without nombres" do
    estudiante = Estudiante.new(nombres: nil)
    expect(estudiante).to_not be_valid
  end

  it "is not valid without apellidos" do
    estudiante = Estudiante.new(apellidos: nil)
    expect(estudiante).to_not be_valid
  end

  it "is not valid without carrera" do
    estudiante = Estudiante.new(carrera: nil)
    expect(estudiante).to_not be_valid
  end

  it "is not valid without carnet" do
    estudiante = Estudiante.new(carnet: nil)
    expect(estudiante).to_not be_valid
  end

  it "is not valid with a duplicate carnet" do
    Estudiante.create(nombres: "Juan", apellidos: "Pérez", carrera: "Ingeniería", carnet: "2024001")
    estudiante = Estudiante.new(carnet: "2024001")
    expect(estudiante).to_not be_valid
  end
end
