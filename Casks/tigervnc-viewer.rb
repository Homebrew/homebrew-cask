cask 'tigervnc-viewer' do
  version '1.9.0'
  sha256 '93969b609b4c6e3b171e1c1c6da408ddb715669a86c060a96fd9ecb83dfd632a'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom'
  name 'TigerVNC'
  homepage 'https://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
