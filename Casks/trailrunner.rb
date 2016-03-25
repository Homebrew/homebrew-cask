cask 'trailrunner' do
  version '3.8.811'
  sha256 '3621c2bc44184e281ec5758ee822abab96dffc9a9c2f453698c799095b86b77e'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '8d04f8da493289affe91eedb8f5a4ddad2fa1f91a30ae8ad04386e5c1a543942'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
