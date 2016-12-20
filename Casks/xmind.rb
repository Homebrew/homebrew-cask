cask 'xmind' do
  version '8-update1'
  sha256 'e0a8a534746c9a31be890afc429fb3d8059db79e52d9d205c054d9d9ef4c5ffb'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  depends_on macos: '>= :snow_leopard'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
