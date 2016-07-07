require('rspec')
require('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it('returns the make of the vehicle') do
      test_vehicle_1 = Vehicle.new('Jeep', 'Cherokee', 2010)
      expect(test_vehicle_1.make()).to(eq('Jeep'))
    end
  end

  describe('#model') do
    it('returns the model of the vehicle') do
      test_vehicle_2 = Vehicle.new('Ford', 'Escape', 2016)
      expect(test_vehicle_2.model()).to(eq('Escape'))
    end
  end

  describe('#year') do
    it('returns the year of the vehicle') do
      test_vehicle_3 = Vehicle.new('GM', 'Impala', 1970)
      expect(test_vehicle_3.year()).to(eq(1970))
    end
  end

  describe('#age') do
    it('returns the age of the vehicle') do
      test_vehicle_4 = Vehicle.new('Volkswagon', 'Vanagon', 1990)
      expect(test_vehicle_4.age()).to(eq(26))
    end
  end

  describe('#worth_buying?') do
    it('returns false if the vehicle is not american made and not younger than 16') do
      test_vehicle_5 = Vehicle.new('Honda', 'Civic', 2006)
      expect(test_vehicle_5.worth_buying()).to(eq(false))
    end
  end

  describe('.all') do
    it('starts out as an empty array') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds an object instance of vehicle to the vehicles array') do
      test_vehicle_6 = Vehicle.new('GM', 'Camero', 1960)
      test_vehicle_6.save()
      expect(Vehicle.all()).to(eq([test_vehicle_6]))
    end
  end

  describe('#id') do
    it('returns the id of the vehicle') do
      test_vehicle_7 = Vehicle.new('Toyota', 'Prius', 1995)
      test_vehicle_7.save()
      expect(test_vehicle_7.id()).to(eq(1))
    end
  end

  describe('find') do
    it('returns a vehicle by its id number') do
      test_vehicle_8 = Vehicle.new('Subaru', 'Outback', 2010)
      test_vehicle_8.save()
      test_vehicle_9 = Vehicle.new('Kia', 'Rio', 2014)
      test_vehicle_9.save()
      expect(Vehicle.find(test_vehicle_9.id())).to(eq(test_vehicle_9))
    end
  end

end
