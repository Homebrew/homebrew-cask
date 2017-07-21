cask 'texshop' do
  version '3.81'
  sha256 'ab910d630197e5d1fd0a7406256c9a7c2ec7f0ad077b2611081157741849d20b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '17c14ef06b91f0446df58ff9276e4a307d7d1d9e5b1ea23894a555f54a96ac3e'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
