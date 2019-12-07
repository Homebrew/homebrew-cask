cask 'typinator' do
  version '8.2'
  sha256 '5fb33d4e49b04169b7d873baa5452e46d2c4554cb531cc859cfd0edebe1bbadd'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
