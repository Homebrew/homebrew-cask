cask 'vrouter' do
  version '0.4.2'
  sha256 'e596633177e6012ced976c72207b864ab8b8922dbbde839c359e54dbb062c36f'

  url "https://github.com/icymind/VRouter/releases/download/v#{version}/VRouter-#{version}.dmg"
  appcast 'https://github.com/icymind/VRouter/releases.atom'
  name 'VRouter'
  homepage 'https://github.com/icymind/VRouter'

  app 'VRouter.app'

  uninstall delete: '/Library/Application Support/VRouter'
end
