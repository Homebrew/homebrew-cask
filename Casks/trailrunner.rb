cask 'trailrunner' do
  version '3.8.3216,200'
  sha256 '000f947ce72c8289bdaa5ac7ece965118fd3dd5c3457f24063fa3de6841013c4'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
