cask 'trailrunner' do
  version '3.8.806'
  sha256 '4433128b68f65463de0222746b48c9dae4d3da162239133b9938edb0034796e5'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '21c9ee9071bcc6c08aa85e204357cdf512c55ed0b8019bef5598ac0724e3c32d'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
