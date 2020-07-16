cask 'yinxiangbiji' do
  version '9.4.0_460661'
  sha256 '47cfa1c9e7146b46aef0042b732854efdbdf7ede7273487f0c234bd526b42e16'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  appcast 'https://update.yinxiang.com/public/ENMacSMD/EvernoteMacUpdate.xml',
          must_contain: version.sub('_', ' ')
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
