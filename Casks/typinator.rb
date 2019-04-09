cask 'typinator' do
  version '7.9'
  sha256 'd134d3d1c3e0c478b23961524e648e1d37a49804044b8f92f4926033c84c7795'

  url "https://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/typinator/history.html'
  name 'Typinator'
  homepage 'https://www.ergonis.com/'

  app 'Typinator.app'
end
