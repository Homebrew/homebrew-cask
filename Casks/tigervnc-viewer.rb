cask :v1 => 'tigervnc-viewer' do
  version '1.4.3'
  sha256 'e6c2f17092456f04ccce6d923af3103f7e69123c4a0f80e37b56ee3861149cca'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/tigervnc/stable/TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
