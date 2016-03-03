cask 'toad' do
  version '236'
  sha256 '012b866e16a33293dc3ff73a4864f5ae19213b7e6f3032b37df1f712a2c0f898'

  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version}.zip"
  name 'Toad – Mac Edition Community'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Toad.app'
end
