cask 'virtualhostx' do
  version '2020.06,1012'
  sha256 '2924c88aa39aa3d920ef9ca2e6fdcabe609fc8241941c9823b6d6a7c9fef629c'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
