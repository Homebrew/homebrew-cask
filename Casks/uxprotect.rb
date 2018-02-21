cask 'uxprotect' do
  version '1.1'
  sha256 '89772d60ef2ade2ba4668f7517300962dc27c0feb530a21cdb6ee599bcfa468f'

  url "https://digitasecurity.com/download/uxprotect/UXProtect#{version}.zip"
  appcast 'https://digitasecurity.com/product/uxprotect/',
          checkpoint: '318c8fa6313a94dc6d1cef988efe2332265b1e1e8633c724b4b467e87d07bba8'
  name 'UXProtect'
  homepage 'https://digitasecurity.com/product/uxprotect/'

  depends_on macos: '>= :sierra'

  app 'UXProtect.app'

  zap trash: [
               '~/Library/Application Scripts/com.digitasecurity.UXProtect',
               '~/Library/Containers/com.digitasecurity.UXProtect',
               '~/Library/Preferences/com.digitasecurity.UXProtect.plist',
             ]
end
