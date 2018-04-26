cask 'trailrunner' do
  version '3.8.3192,196'
  sha256 '2ff889e9b1c45c58f078580a6d216226f26554788904140cc7bae469abb0dc65'

  # rink.hockeyapp.net was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/83c4086e3f968b874757ba689e71f610',
          checkpoint: '89ae0a5efaafc1a3f1e33d749b84a23a96ac23966cd4933c3f90e11f57835c2b'
  name 'TrailRunner'
  homepage 'http://www.trailrunnerx.com/'

  app 'TrailRunner.app'
end
