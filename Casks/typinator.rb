cask 'typinator' do
  version '8.1'
  sha256 '3e3d06a29042b32e39e92c3515a7764c35439f291c158d236bc183fa66d6f5b7'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
