cask 'tigervnc-viewer' do
  version '1.6.0'
  sha256 '54171abcab809f0dd4f54ababd9297980a4ad9c719f783431b9fd2b3b7534d1a'

  # bintray.com/tigervnc was verified as official when first introduced to the cask
  url "https://bintray.com/tigervnc/stable/download_file?file_path=TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
