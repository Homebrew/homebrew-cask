cask 'unshaky' do
  version '0.5.0'
  sha256 '44d7cda90d4bc9b5978092879bea12da9c3a35cc58df8ef7e0fcea9f11c4b9ce'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
