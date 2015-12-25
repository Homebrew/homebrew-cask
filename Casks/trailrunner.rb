cask 'trailrunner' do
  version :latest
  sha256 :no_check

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          :sha256 => '479cce6567dc1c7a8b4409c8ab4df678a373111c98f5d2d977ff2c5f9eddd7d0'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
