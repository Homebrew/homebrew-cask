cask 'utools' do
  version '0.7.1-beta'
  sha256 '0ce487683050ee95e27ce0586a7941cb32c260396549dd17d41c4e73971f496d'

  url "https://resource.u-tools.cn/version/uTools-#{version}.dmg"
  name 'utools'
  homepage 'https://u.tools/index.html'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "uTools.app"

  zap trash: [
    '~/Library/Application Support/uTools',
    '~/Library/Logs/uTools',
  ]
end