cask 'toptracker' do
  version '1.5.10.6403'
  sha256 '31f88972749061e54563e60794ebe10a98185b08890784381e432806ee15500f'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  depends_on macos: '>= :sierra'

  app 'TopTracker.app'
end
