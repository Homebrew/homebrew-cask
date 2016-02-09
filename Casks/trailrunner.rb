cask 'trailrunner' do
  version '3.8.804'
  sha256 'be8c169993719130b0a531b632fc41b829047bfa4538b74ed011823612a188f3'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '829c462cb38bccdefd8cd4c70520308964abe1d213b7828f39908a7e261ce2c0'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
