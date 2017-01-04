cask 'trailrunner' do
  version '3.8.828'
  sha256 '94e96f48eb7818332a732963dd97f2b5caf92c79b9b840e94be10919b0a28506'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '97bc58f1da646e029d80ea1856080a773053bb99e5abcb3d11ac0291aafa4312'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
