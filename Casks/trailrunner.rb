class Trailrunner < Cask
  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610'
  homepage 'http://trailrunnerx.com/'
  version 'latest'
  sha256 :no_check
  link 'TrailRunner.app'
end
