cask 'trailrunner' do
  version '3.8.798'
  sha256 '08e31659e4f4e87caf0c8c3c24cdf88d2099d596e7b9fe0a9297c38277b5147a'

  url 'http://downloads.trailrunnerx.com/TrailRunner.app.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '9ffa3aabf4871eac192a33aa052af1cb8b8e73cf1dec639dd7f40b49c9e426c7'
  name 'TrailRunner'
  homepage 'http://trailrunnerx.com/'
  license :gratis

  app 'TrailRunner.app'
end
