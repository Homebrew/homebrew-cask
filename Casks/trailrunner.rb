cask 'trailrunner' do
  version '3.8.1497'
  sha256 'e5163a33b7a1ca0258df5f0e8d0faafa72889bea7c819284a35432e19a40096c'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/188?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '41ef5625e07139a7280bafb420321f2ef18f6d4d4cd576777a127e630dfa2d35'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
