cask 'texshop' do
  version '3.64'
  sha256 'c0f2f8afeb966f705919f2529bc0617ab587477e16df8f0f414d5c82d25ab83d'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '1d80217780eb2db4a471666b109fb5b23c806d5bbf60ebdcb6b40d23eb260d13'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
