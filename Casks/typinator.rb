cask 'typinator' do
  version '8.0.1'
  sha256 '7b81643991a32d00eb667b574e8717d5f4f6dec79329ef45ec1a23cbf7e874e2'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
