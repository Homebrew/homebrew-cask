cask 'texturepacker' do
  version '4.12.1'
  sha256 '6eb8f9beb30c793cd720c66f43f38a29844ffd5dc6be3428e5d8ff4b6cb7f690'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
