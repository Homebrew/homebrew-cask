cask :v1 => 'tigervnc-viewer' do
  version '1.5.0'
  sha256 '927e956cbda7672c7efdfa9f5e49cb89043d1627132dd2e088a3c0009de4080e'

  # bintray.com is the official download host per the vendor homepage
  url "https://bintray.com/artifact/download/tigervnc/stable/TigerVNC-#{version}.dmg"
  name 'TigerVNC'
  homepage 'http://tigervnc.org/'
  license :gpl

  app "TigerVNC Viewer #{version}.app"
end
