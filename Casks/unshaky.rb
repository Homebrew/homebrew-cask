cask 'unshaky' do
  version '0.5.2'
  sha256 'e089d3b7877f21ef96da7cdcbfe8b26b7273ba3e0b569226dc58432231916885'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
