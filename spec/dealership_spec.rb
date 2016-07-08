require('rspec')
require('dealership')

describe(Dealership) do

  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership_1 = Dealership.new("Bob's Used Cars")
      expect(test_dealership_1.name()).to(eq("Bob's Used Cars"))
    end
  end

end
