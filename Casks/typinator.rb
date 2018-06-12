cask 'typinator' do
  version '7.6'
  sha256 '148155fc028494ee3821c97dbf4dc03e507335b56adcdf0c5d583fea87d169dc'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
