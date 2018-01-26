cask 'uxprotect' do
  version '1.0'
  sha256 '264529e914e4d5c859ebd6f2de5778f3149cf7dcdd3829f4b7338cb9287546ec'

  url "https://digitasecurity.com/download/uxprotect/UXProtect#{version}.zip"
  appcast 'https://digitasecurity.com/product/uxprotect/',
          checkpoint: 'd7c9ac945981eedf97e05dd1f5fe4af2e341fb4856697ff931cc87e94d31cbcf'
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
