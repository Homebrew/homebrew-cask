cask 'trailrunner' do
  version '3.8.810'
  sha256 '11d1a8ed441d1e0ca8cdbff1507e40eb025bfaa4d67674e35b57d8ed77764d80'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: 'deb6317d4a4ea592e30a8dcf7f457c0faa003a0f11d642899dd3b3806ebe7250'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
