cask 'uxprotect' do
  version '1.1.1'
  sha256 'e6a0472e35d04cf719e8841c813ff0e155550ab47d2e05c3a426a6815f05fbc2'

  url "https://digitasecurity.com/download/uxprotect/UXProtect#{version}.zip"
  appcast 'https://digitasecurity.com/product/uxprotect/appcast.xml',
          checkpoint: 'f9246121cf3f318479784f949c8a329f28daf0a8169af5aad59770f1b6ec1484'
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
