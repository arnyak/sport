Given /^the following footballers:$/ do |footballers|
 footballers.hashes.each do |footballer|
    f = Footballer.new({:firstname => footballer[:firstname], :lastname => footballer[:lastname], :born_at => footballer[:born_at], :city_born_in => footballer[:city_born_in], :country_born_in => footballer[:country_born_in]})
    p f.errors unless f.save
  end
end

