cask 'trailrunner' do
  version '3.8.802'
  sha256 '55d45bacf2b432aab4bc9fb2f4b34a7afd33604a08e615270ab06b824708416a'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: 'b4e1ce1a679064f600b91a862cf80390c1f90366983d5d72f8da606570a40369'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
