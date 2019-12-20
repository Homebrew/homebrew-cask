cask 'yinxiangbiji' do
  version '9.2.4_459040'
  sha256 '31dc6895fd0bf3ab9d2772dbf7fe8216a22d5b6efce94ce0c21812a76c13849a'

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
