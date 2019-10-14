cask 'yinxiangbiji' do
  version '9.2.0_458669'
  sha256 'e561e19ec221f9bd37161cfbf385bccf921dd80e0420dd8951f45f42b935da08'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  appcast 'https://update.yinxiang.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          configuration: version.sub('_', ' ')
  name 'Evernote'
  name '印象笔记'
  homepage 'https://www.yinxiang.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
