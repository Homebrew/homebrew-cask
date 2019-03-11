cask 'toptracker' do
  version '1.5.9.6399'
  sha256 'e150d5463e32db0cc41bb56b982e8e0f4a5a0dda120115ddbe4e4a61471c06d3'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  app 'TopTracker.app'
end
