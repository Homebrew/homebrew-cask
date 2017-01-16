cask 'trailrunner' do
  version '3.8.830'
  sha256 'a53915cd8b5bbbe55fd96d0372b587e7ec165236f92589cf274ea55e380faa26'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '60131a8205964387489144e2d94556d665b8b267fe984751d49eda26d375b31c'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
