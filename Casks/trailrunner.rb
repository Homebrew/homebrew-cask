cask 'trailrunner' do
  version '3.8.3221,201'
  sha256 '6c699cbce77a26eef24e4ca59cc77978e58c766ca20537270bae9f7f7dd26c0e'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  name 'TrailRunner'
  homepage 'https://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
