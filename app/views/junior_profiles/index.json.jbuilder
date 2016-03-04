json.array!(@junior_profiles) do |junior_profile|
  json.extract! junior_profile, :id
  json.url junior_profile_url(junior_profile, format: :json)
end
