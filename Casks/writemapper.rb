cask 'writemapper' do
  version '2.9.1'
  sha256 '04e46adf4245d61361980cfa6921c505d0c80d6525f474fc10391bb0b0a9c44e'

  url "https://writemapper.com/static/app/mac/WriteMapper-#{version}.dmg"
  appcast 'https://writemapper.com/static/app/mac/latest-mac.yml'
  name 'WriteMapper'
  homepage 'https://writemapper.com/'

  app 'WriteMapper.app'
end
