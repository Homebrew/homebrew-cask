cask 'trailrunner' do
  version '3.8.832'
  sha256 '8255753e931c9be2ae1c3852455b03a81556d7ff524ab8a0ddb89a6013211a41'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '4113b19dfc7e425b67d781cfc496967235de7119cd4f8a2a30a1adf68eddfc92'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
