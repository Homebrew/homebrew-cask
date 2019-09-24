cask 'vnc-viewer' do
  version '6.19.923'
  sha256 '918b0e5653265c6b272e538e3517d0ee0c6ec49e9dc2da1a04e4582b3b768fc9'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  appcast 'https://www.realvnc.com/en/connect/download/viewer/macos/'
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
