cask 'trailrunner' do
  version '3.8.805'
  sha256 'a3474029971146ece8a4758dbe5c45344804b3243ef09b25bd813bb7d53eb50f'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '2693c0de4e46c9c5114ebdd98e208211958298dec74a135236c2d6f3a2a077d9'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
