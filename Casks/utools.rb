cask 'utools' do
  version '1.0.2-beta'
  sha256 'e6288cf846a733ef67d3fe87ab0454f0b9f44de1830daafa7f0ddbd7f00fbb16'

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
