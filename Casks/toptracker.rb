cask 'toptracker' do
  version '1.6.1.6521'
  sha256 '2dab586d95fd0b853b23ead7c4ad2752c53adb09a80e76e28e8be232dc80c0ea'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  depends_on macos: '>= :sierra'

  app 'TopTracker.app'
end
