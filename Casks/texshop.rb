cask :v1 => 'texshop' do
  version :latest
  sha256 :no_check

  url 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshop.zip'
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '40ca067cd5639a4f9dc7892607ba41fbd5251a9793ca840040ed7d91f8ffaa2a'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TexShop.app'
end
