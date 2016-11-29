cask 'texturepacker' do
  version '4.3.1'
  sha256 'c20782478320079d01212157b01846e31db0ad544a9013e830628aa3ac16337d'

  url "https://www.codeandweb.com/download/texturepacker/#{version}/TexturePacker-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/TexturePacker/appcast-mac-release.xml',
          checkpoint: '434c2dfe338782968c01fe599f2f0c85e73007ec622a7935aff28600d01fd92c'
  name 'TexturePacker'
  homepage 'https://www.codeandweb.com/texturepacker'

  app 'TexturePacker.app'
end
