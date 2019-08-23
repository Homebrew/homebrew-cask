cask 'trailrunner' do
  version '3.8.3233,204'
  sha256 '29f061fbb95f436e3bf2fb1db55e63e4bc96906df361a998a70af68ff7f507dd'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  name 'TrailRunner'
  homepage 'https://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
