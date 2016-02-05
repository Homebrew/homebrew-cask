cask 'trailrunner' do
  version '3.8.800'
  sha256 '3c7ee91e11e5c870096352c71b2c6b6cb8369fdcf617282e343045551ba34f54'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '589a8da19b6d9fc89778ff9dbff68be4797160ea2b5b9d053a524ac1aebd516c'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
