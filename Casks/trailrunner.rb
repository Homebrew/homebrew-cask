cask 'trailrunner' do
  version '3.8.3230,203'
  sha256 '0e4dca11d63d7d274d40a8b3fd176c866804476c316cfdb2ab0c5d40e3d4f40a'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  name 'TrailRunner'
  homepage 'https://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
