cask 'wickrenterprise' do
  version '5.55.7'
  sha256 '8b926b51744a53267bcb7bb1f5cc96e612cdc0be38921600bfa5023181ad3dce'

  # This is the URL advertized on the homepage.
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/ent/WickrEnterprise-#{version}.dmg"
  name 'Wickr Enterprise'
  homepage 'https://enterprise-download.wickr.com/'

  app 'WickrEnterprise.app'
end
