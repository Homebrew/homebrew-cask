cask 'tigervnc-viewer' do
  version '1.8.0'
  sha256 'b816efe3f80844d63450bd80abf537d8d19c84c182ea59767c12de6aa27bd48a'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom',
          checkpoint: '71af12586886fea31bc8134ab5083bbbaa594aa5e0a88079c8b739d667cc1125'
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
