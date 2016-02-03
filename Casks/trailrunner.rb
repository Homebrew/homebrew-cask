cask 'trailrunner' do
  version '3.8.799'
  sha256 'fd827647b6bf664bdae7107e0a3e980d4bf9731f43f7f405fbc9bc38f4734aea'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: 'fa90dce33358ff59704ec86850ea61939f80f99ef2b67e6970895e34688c01db'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
