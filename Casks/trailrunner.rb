cask 'trailrunner' do
  version '3.8.797'
  sha256 'bc72fc1c78021343322e34b3a5b5eea41e27d6c64ec92dc1c724ec31b6e54bd3'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '6dd64c07ab680477169922bbafe46aa04abea6399df734023a8e861f1442a8e8'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
