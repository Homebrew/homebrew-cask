cask 'tigervnc-viewer' do
  version '1.10.0'
  sha256 '619c634cb325c85c8379d37d5c4c6e185e05b4c1be37a3a0d7c399715304b4aa'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom'
  name 'TigerVNC'
  homepage 'https://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
