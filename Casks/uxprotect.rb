cask 'uxprotect' do
  version '1.1'
  sha256 '89772d60ef2ade2ba4668f7517300962dc27c0feb530a21cdb6ee599bcfa468f'

  url "https://digitasecurity.com/download/uxprotect/UXProtect#{version}.zip"
  appcast 'https://digitasecurity.com/product/uxprotect/appcast.xml',
          checkpoint: '9bc4de94f3d5376622742fd7020f47403c22b3dce6f7994e47a848751df44973'
  name 'UXProtect'
  homepage 'https://digitasecurity.com/product/uxprotect/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'UXProtect.app'

  zap trash: [
               '~/Library/Application Scripts/com.digitasecurity.UXProtect',
               '~/Library/Caches/KSCrash/UXProtect',
               '~/Library/Caches/com.digitasecurity.UXProtect',
               '~/Library/Containers/com.digitasecurity.UXProtect',
               '~/Library/Preferences/com.digitasecurity.UXProtect.plist',
             ]
end
