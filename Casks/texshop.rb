cask 'texshop' do
  version '3.84'
  sha256 'ae7065a9abe630bfe6b1c78a23fcbbd93981b40c5fbfa976363aed8185aaa791'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '10daeb2cc33d1316978c731991e961e9cbc001e382e36680573bee81278a5acd'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
