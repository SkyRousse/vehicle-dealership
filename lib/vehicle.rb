class Vehicle
  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
  end

  define_method(:worth_buying) do
    american_made = ['Ford', 'Chyrsler', 'GM']
    american = american_made.include?(@make)
    new_enough = age().<=(15)
    american.&(new_enough)
  end
end