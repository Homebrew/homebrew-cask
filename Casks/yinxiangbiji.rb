cask 'yinxiangbiji' do
  version '8.3.0_457351'
  sha256 '211ffbf6232c032554300aadba3bda77b748f0839688387426630615184a4e6f'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
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
