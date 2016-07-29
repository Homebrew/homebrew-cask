cask 'trailrunner' do
  version '3.8.815'
  sha256 '474ea119b4dcd823fb6831a05bac0881f02b6e5114f5b23d066f1b754fa153d6'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '118bf8eb0fdc06791e44c9075f843c23d62d7d0f1df2bee10933e40c0124b3a3'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
