cask :v1 => 'tigervnc-viewer' do
  version '1.4.1'
  sha256 '49d443b2a678030bab8d1b49868164543851ca998355eb70c72ea4ab19f1114c'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/tigervnc/stable/TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
