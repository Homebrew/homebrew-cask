cask 'texshop' do
  version '3.77'
  sha256 '9bcd1c23818bf592af43b1ac06c29af2c82702d2bc271f6cf6ccf4f4744b6e05'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'b01772f9f71e6b86c7b2eb0f50f59adb468bf0b1fa0a8254a17f95f3a44cdedb'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
