cask 'tastyworks' do
  version '1.0.15'
  sha256 'c540eac3c09937f7e6a7ff6c98a897d28445df7f8fbf0521ceab198c3d59e397'

  url "https://download.tastyworks.com/desktop-1.x.x/#{version}/tastyworks-#{version}.dmg"
  appcast 'https://tastyworks.com/technology.html'
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  auto_updates true

  app 'tastyworks.app'

  zap trash: [
               '~/Library/Application Support/tastyworks',
               '~/Library/Saved Application State/com.tastyworks.desktop.savedState',
             ]
end
