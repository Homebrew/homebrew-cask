cask 'x-swiftformat' do
  version '1.0.2'
  sha256 'bd1a235f98fd1c41832b1f820855109df18220b810ac346abcae0a6dc6b69202'

  url "https://github.com/ruiaureliano/X-SwiftFormat/releases/download/#{version}/x-swiftformat_#{version}.zip"
  appcast 'https://github.com/ruiaureliano/X-SwiftFormat/releases.atom'
  name 'X-SwiftFormat'
  homepage 'https://github.com/ruiaureliano/X-SwiftFormat'

  depends_on macos: '>= :catalina'

  app 'X-SwiftFormat.app'

  zap trash: [
               '~/Library/Preferences/com.ruiaureliano.xswiftformat.plist',
               '~/Library/Caches/com.ruiaureliano.xswiftformat',
               '~/Library/Containers/com.ruiaureliano.xswiftformat'
             ]
end
