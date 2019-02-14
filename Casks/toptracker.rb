cask 'toptracker' do
  version '1.5.8.6185'
  sha256 '7da3130bc20023780af8a2abc7cfa8b89e90275a6eaa8f61fcdc0b914024b2b0'

  # d101nvfmxunqnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast 'https://tracker-api.toptal.com/desktop/updates/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  app 'TopTracker.app'
end
