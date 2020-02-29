cask 'virtualhostx' do
  version '2020.02,1007'
  sha256 '8ab43b2de01bec33793726af99849a7ec74d5dd3a79e84b13183ce53e578df57'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
