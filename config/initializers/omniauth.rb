# Replace API_KEY and API_SECRET with the values you got from Twitter
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "572170379902829", "6629820042cd58f45b704ad4a88337cb"
end