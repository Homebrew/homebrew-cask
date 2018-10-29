cask 'vnc-viewer' do
  version '6.18.907'
  sha256 '7c37d9c2137bfe6a87019659a9f52cff0a008dd8881510381ecad2b258d30f73'

  url "https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-#{version}-MacOSX-x86_64.dmg"
  name 'Real VNC Viewer'
  homepage 'https://www.realvnc.com/'

  app 'VNC Viewer.app'

  zap trash: [
               '~/Library/Preferences/com.realvnc.vncviewer.plist',
               '~/Library/Saved Application State/com.realvnc.vncviewer.savedState',
             ]
end
