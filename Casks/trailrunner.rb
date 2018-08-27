cask 'trailrunner' do
  version '3.8.3205,199'
  sha256 'ff8043d446cff1bda94ae3fc4ab268d4e5f5701198e03ecdaf1531ddd4ee5b48'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
