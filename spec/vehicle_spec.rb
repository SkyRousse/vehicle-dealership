require('rspec')
require('vehicle')

describe('Vehicle') do
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
end
