cask 'trailrunner' do
  version '3.8.3200,197'
  sha256 'ded001616141e6e781cb23ff602996c63483b20dfc29ce0dfde2f766dc2f98f7'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: 'be5fd9426fe7418a35164e31c78d7a275f56797bbe8767936507e54dff69cbac'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
