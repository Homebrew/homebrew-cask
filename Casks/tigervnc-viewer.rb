cask 'tigervnc-viewer' do
  version '1.6.0'
  sha256 '54171abcab809f0dd4f54ababd9297980a4ad9c719f783431b9fd2b3b7534d1a'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/tigervnc/stable/TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
