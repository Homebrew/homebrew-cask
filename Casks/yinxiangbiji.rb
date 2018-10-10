cask 'yinxiangbiji' do
  version '8.2.0_457181'
  sha256 '2b64f2accb3b535923f2ae91b76074513d285001e2ffbb25287044675e7e6e55'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  name 'Evernote'
  name '印象笔记'
  homepage 'https://www.yinxiang.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app '印象笔记.app'

  uninstall quit: [
                    'com.yinxiang.Mac',
                    'com.yinxiang.MacHelper',
                  ]

  zap trash: [
               '~/Library/Application Support/com.yinxiang.Mac',
               '~/Library/Application Support/com.yinxiang.MacHelper',
               '~/Library/Caches/com.evernote.edam.usage',
               '~/Library/Caches/com.yinxiang.Mac',
               '~/Library/Preferences/com.yinxiang.Mac.plist',
               '~/Library/Preferences/com.yinxiang.MacHelper.plist',
             ]
end
