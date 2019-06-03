Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['636166260181316'], ENV['636d18746d1575c81cbcc7474cc81707']
  provider :google_oauth2, ENV['288825645093-rceca65nl79cnmve21hm3fn30pegrl3a.apps.googleusercontent.com'], ENV['UuokYvRFMyJ-7JdCIfDF-P6U']
end