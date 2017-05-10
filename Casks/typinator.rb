cask 'typinator' do
  version '7.2'
  sha256 '153ae0ac3441744c369d08ff376e6856bbb49a9a379351f1d3cd7a31f7889de9'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/typinator/history.html',
          checkpoint: 'bf00eb396aec76a1a501756d237e20a91f959793e9343a7cc19bbf6f0e54c005'
  name 'Typinator'
  homepage 'http://www.ergonis.com/'

  accessibility_access true

  app 'Typinator.app'
end
