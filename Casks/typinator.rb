cask 'typinator' do
  version '8.4.1'
  sha256 '4175671b56683c0edebe832c0d1430f5b60c3dd2c2e7f57db73c2c6ecbe47950'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/typinator.xml'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
