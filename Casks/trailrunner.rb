cask 'trailrunner' do
  version '3.8.817'
  sha256 '84a5057da3792acfe0c0669b589c76df11ff5e29cfcbf4bca24d1519dc6d1b63'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '6dc16b15e69fdb44a653f7cc0c99d245396825280906f2cfbb5829fc3157a9d4'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'

  app 'TrailRunner.app'
end
