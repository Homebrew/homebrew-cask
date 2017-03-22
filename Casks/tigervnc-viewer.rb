cask 'tigervnc-viewer' do
  version '1.7.1'
  sha256 '909c53f9a4b60d4569c4348e56ef6e9bf85b7d22ade219d7e545014ca16ff2de'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  appcast 'https://github.com/TigerVNC/tigervnc/releases.atom',
          checkpoint: '1cf83f9105fa22f1feed4e858f22618caa6e3c728649338325b62811be66b5cf'
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'

  app "TigerVNC Viewer #{version}.app"
end
