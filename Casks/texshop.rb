cask 'texshop' do
  version '3.77'
  sha256 'c6e167f496602dc5d1018f96e3ac50325e11256980fac53e14219d2af8be1ab2'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'bab042ce07e40d4dcba3d0eb408eb8a979fef1bbaaeddf6e9a74ceb5a6077e23'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
