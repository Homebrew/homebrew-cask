cask 'trailrunner' do
  version '3.8.813'
  sha256 'f3b51420bcc633a430636fc90e6cf8477385dd229855e6a25feaf2839d63a499'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '095f4dfdeb07984c2554a66be5224371ccd2c5525d3c83ca03a6de9473b6a2bf'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
