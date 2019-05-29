cask 'toptracker' do
  version '1.6.0.6502'
  sha256 'a4e2734c14d2d1b138650b4728f8bd8a5462547a038e7e206d6de57c8ba17003'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  depends_on macos: '>= :sierra'

  app 'TopTracker.app'
end
