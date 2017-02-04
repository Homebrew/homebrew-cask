cask 'trailrunner' do
  version '3.8.833'
  sha256 'ca0987e365e4cfffb9fb573cad95e89e1a654c59dbb2a79bcec6718356dda137'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '578cc528fe3188c98384ffdcb1202f876ecb14e53a27649868440928d4de05f4'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
