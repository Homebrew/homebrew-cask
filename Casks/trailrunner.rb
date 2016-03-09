cask 'trailrunner' do
  version '3.8.808'
  sha256 '09965b620b008b667bcea11d3d15aa51aeda6513be8d39566677b4e9704a7901'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '8dbb10ec9b4366cfff1d14e4917f0c8a8992ffe86395a5a23a34d96f0f5fc705'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
