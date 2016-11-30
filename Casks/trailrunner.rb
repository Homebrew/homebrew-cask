cask 'trailrunner' do
  version '3.8.824'
  sha256 'b4cc1161f700b266d062ebb4cf5fc9053c5e7f55dedf2eb1f140c4ec673ee35d'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '3059e5b79286c9db9ce2a30701f73549e3c97d1872d8d194c2b1f0ceee8ca419'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
