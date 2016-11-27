cask 'trailrunner' do
  version '3.8.822'
  sha256 '7274f7d396a154c53fd597cd941da39136d3ee15d98c36caab417237eae75c57'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '17cf8c53e27cf35acad1aa9f5194822111255274916b7408c37f5544af0fdc26'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
