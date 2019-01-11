cask 'toptracker' do
  version '1.5.7.6079'
  sha256 '1f7c116da6b3f6ad1c7584b84daf28329e9fe158dd0251063d9401db7d8bd5d4'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  app 'TopTracker.app'
end
