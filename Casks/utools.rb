cask 'utools' do
  version '0.8.9-beta'
  sha256 'f4c206ee440974d1b3386333f28533d603bbfd0a0878f00c6721b74765a1c967'

  # resource.u-tools.cn was verified as official when first introduced to the cask
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
