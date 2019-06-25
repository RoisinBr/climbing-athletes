require 'pry'
require 'httparty'
require_relative 'db_config'
require_relative 'models/profile'
require_relative 'models/result'
require 'json'

athlete_numbers = [7202, 11363, 11895, 6169, 9224, 763, 11780, 11902, 77194, 76567, 10740, 58446, 6679, 6733, 9794, 13428, 8391, 67088, 9113, 58570, 11359, 11876, 59634, 58338, 7087, 58878, 77191, 76570, 58906, 77188, 307]

athlete_numbers.each do |num|
url = "https://ifsc-egw.wavecdn.net/egw/ranking/json.php?person=#{num}"
  athlete = HTTParty.get(url)
  profile = Profile.new
  profile.first_name = athlete["firstname"]
  profile.surname = athlete["lastname"]
  profile.gender = athlete["gender"]
  profile.state = athlete["state"]
  profile.lead_national_ranking = athlete["lead_national_rank"]
  profile.boulder_national_ranking = athlete["boulder_national_rank"]
  # profile.world_ranking = athlete[:rankings][:name]
  profile.website = athlete["homepage"]
  profile.facebook = athlete["facebook"]
  profile.instagram = athlete["instagram"]
  profile.last_comp = athlete["last_comp"]
  profile.photo = "http://math.utsa.edu/wp-content/uploads/2017/11/temporary-profile-placeholder-1.jpg"
  profile.save
  
  # binding.pry
    athlete["results"] && athlete["results"].each do |comp_result|
      result = Result.new
      result.profile_id = profile.id
      result.rank = comp_result["rank"]
      result.date = comp_result["date"]
      result.name = comp_result["name"]
      result.url = comp_result["url"]
      result.cat_name = comp_result["cat_name"]
      result.save
    end
end

#Going to need to do an update script when athletes are in and need to modify