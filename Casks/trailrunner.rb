cask 'trailrunner' do
  version '3.8.827'
  sha256 'c9102ec6cc6af2fd10e5b8ad25a0aff54cb0c50ed46680b12df8a737f47bf045'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '4c0ba04a57fee54d4ba9941e5bf0351e8a420419111f7409b0a35a20f0c3846c'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
