require('rspec')
require('dealership')
require('vehicle')

describe(Dealership) do

  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#save') do
    it('saves an instance of a new Dealership object in the @@dealerships array') do
      test_dealership = Dealership.new("Johnny's Big Top")
      test_dealership.save()
      test_dealership_2 = Dealership.new("Bob's Used Cars")
      test_dealership_2.save()
      expect(Dealership.all()).to(eq([test_dealership,test_dealership_2]))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Frank's Slick Wheelies")
      test_dealership.save()
      test_dealership_2 = Dealership.new("Bob's Used Cars")
      test_dealership_2.save()
      expect(test_dealership_2.id()).to(eq(2))
    end
  end

  describe('#cars') do
    it('initially returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Patt's Perfect Picks")
      test_dealership.save()
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a dealership by its id number') do
      test_dealership = Dealership.new("Tommy's djanky Jalopies")
      test_dealership.save()
      test_dealership_2 = Dealership.new("Jane's Comfort Cars")
      test_dealership_2.save()
      expect(Dealership.find(test_dealership.id())).to(eq(test_dealership))
    end
  end

  describe('#add_vehicle') do
    it("adds a new vehicle to a dealership") do
      test_dealership = Dealership.new("Bob's Used Cars")
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_dealership.add_vehicle(test_vehicle)
      expect(test_dealership.cars()).to(eq([test_vehicle]))
    end
  end

end
