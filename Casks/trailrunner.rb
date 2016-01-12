cask 'trailrunner' do
  version '3.8.791'
  sha256 'd9658293fb783bac58067249958acf2476f3c498d281274be53e93cc5ab9f585'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          :sha256 => 'db9e4fb35a05986f30c8f82290d17b584984b7bf548bf2a10d551138798cd674'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
