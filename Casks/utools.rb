cask 'utools' do
  version '1.1.1'
  sha256 'f4792db7d82af7c562d6a194f0f2e9cb681f1d8b5b5ee59078607cfdbbd201fa'

  # resource.u-tools.cn/ was verified as official when first introduced to the cask
  url "https://resource.u-tools.cn/currentversion/uTools-#{version}.dmg"
  appcast 'https://resource.u-tools.cn/currentversion/latest-mac.yml'
  name 'uTools'
  homepage 'https://u.tools/index.html'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'uTools.app'

  zap trash: [
               '~/Library/Application Support/uTools',
               '~/Library/Logs/uTools',
             ]
end
