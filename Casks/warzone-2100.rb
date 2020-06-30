cask 'warzone-2100' do
  version '3.4.0'
  sha256 'c74ffe361f41965ea46a4e1e63685210584cba3281c7a85e7ce92d2bd7fef490'

  # github.com/Warzone2100 was verified as official when first introduced to the cask
  url "https://github.com/Warzone2100/warzone2100/releases/download/#{version}/warzone2100_macOS.zip"
  appcast 'https://github.com/Warzone2100/warzone2100/releases.atom'
  name 'Warzone 2100'
  homepage 'https://wz2100.net/'

  app 'Warzone 2100.app'

  zap trash: [
               '~/Library/Application Support/Warzone 2100*',
               '~/Library/Saved Application State/net.wz2100.Warzone2100.savedState',
             ]
end
