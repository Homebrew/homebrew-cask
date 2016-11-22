cask 'trailrunner' do
  version '3.8.821'
  sha256 'd7d49f63acab5ec2cec6d0f6962ab2c32b45b4b16dffcb5532a343d6157e040f'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '854755a771b02a41e12af5f475a8a3a30190b8205f76c1a4b2a7bd5cea0dcf59'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
