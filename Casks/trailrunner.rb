cask 'trailrunner' do
  version '3.8.819'
  sha256 'a6ac92c7a601cf870e95c62413effe7c8c9eaa633022fdb5af0d26272f46ad34'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '969894c5a27db05780b68c077b2c591d1d16ec4ff27dc2b9233edc1482531b9f'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
