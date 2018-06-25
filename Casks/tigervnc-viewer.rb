cask 'tigervnc-viewer' do
  version '1.8.0'
  sha256 'fdff189c864788a174066da081e9bd8991628df46a3a2b69bd7c593d3e62d426'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom'
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
