cask 'virtualhostx' do
  version '2019.04,1003'
  sha256 'df7a9d5ef1846883582ba4b79a96cfb362ea76a51ecdf9bf9ad61185509981b1'

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=45'
  name 'VirtualHostX'
  homepage 'https://clickontyler.com/virtualhostx/'

  depends_on macos: '>= :sierra'

  app 'VirtualHostX.app'
end
