cask :v1 => 'tigervnc-viewer' do
  version '1.4.2'
  sha256 'b99dde9f52a446775aa12c1b3464ef69fd1cff169eb3e076b7804a25b109f290'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/tigervnc/stable/TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
