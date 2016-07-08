require('rspec')
require('dealership')

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
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Frank's Slick Wheelies")
      test_dealership_2 = Dealership.new("Bob's Used Cars")
      expect(test_dealership_2.id()).to(eq(1))
    end
  end

end
