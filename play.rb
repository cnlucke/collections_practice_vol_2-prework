schools = {
  "flatiron school bk" => {:location => "NYC"},

  "flatiron school" => {:location => "NYC"},

  "dev boot camp" => {:location => "SF"},

  "dev boot camp chicago" => {:location => "Chicago"},

  "general assembly" => {:location => "NYC"},

  "Hack Reactor" => {:location => "SF"}
}

organized_schools =
    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}


def organize_schools(schools)
 #get uniq list of locations
 places = []
 places_by_hash = {}

 places = schools.values.collect do |location|
   location[:location]
 end

 #get rid of duplicates, add each item in array to hash
 places.uniq.collect do |city|
   places_by_hash.merge!( {city => []} )
 end

 schools.each do |school, city|
   places_by_hash[city[:location]] << school
 end

end
