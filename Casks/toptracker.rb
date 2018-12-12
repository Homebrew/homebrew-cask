cask 'toptracker' do
  version :latest
  sha256 :no_check

  url 'https://tracker-api.toptal.com/desktop/latest/mac'
  name 'TopTracker'
  homepage 'https://tracker.toptal.com/tracker/'

  app 'TopTracker.app'
end
