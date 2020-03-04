cask 'virtualhostx' do
  version '2020.03,1008'
  sha256 '3082b331c232acc3b8a92fcee4ef2f940c9145a2fe49ff86c5e6efa97271cfd9'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
