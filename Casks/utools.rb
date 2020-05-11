cask 'utools' do
  version '1.0.4-beta'
  sha256 '30d46d8d89706b8d7642e2d809ad214410ba9c151ec3a0893658ac69f8639bdc'

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
