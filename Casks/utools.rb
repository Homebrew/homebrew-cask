cask 'utools' do
  version '1.0.0-beta'
  sha256 '7ba4b6574f6ebab5a83e3639ca8bef03a7f5135787e5f400b0ab566c1638ff50'

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
