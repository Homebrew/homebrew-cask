cask 'texshop' do
  version '3.80'
  sha256 'afac0057f7e0ac2fc20679d26f2729735a570de9f644f4f2d67d361bd55cb209'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '93f1e79a4fda1b4cb76fabf5de03daf0fb1091682785e02a9b7009ce732178b7'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
