Given /^the following footballers:$/ do |footballers|
 footballers.hashes.each do |footballer|
    f = Footballer.new({:first_name => footballer[:first_name], :last_name => footballer[:last_name], :born_at => footballer[:born_at], :city_born_in => footballer[:city_born_in], :country_born_in => footballer[:country_born_in]})
    p f.errors unless f.save
  end
end

