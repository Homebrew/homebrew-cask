cask 'vnc-viewer' do
  version '6.20.113'
  sha256 'd6035174e9e4aa2e281b49abc953b75c915a1eca9173d56140ddfa3c129197dd'

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
