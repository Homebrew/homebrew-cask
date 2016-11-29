cask 'trailrunner' do
  version '3.8.823'
  sha256 '02576d15331a42a8b65a3d824542f1bedc7a2b45f229feb56515cab1f4f910a3'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '4dbdc369f89142987943bc665218e99ca16d59de12e092a58368a387b0034118'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
