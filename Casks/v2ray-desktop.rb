cask 'v2ray-desktop' do
  version '1.5.1'
  sha256 '81faa20c1f039316855326b8c6096b998f0e38a605300aa8e76162ae9eea036a'

  url "https://github.com/Dr-Incognito/V2Ray-Desktop/releases/download/#{version}/V2Ray-Desktop-v#{version}-macOS.zip"
  appcast 'https://github.com/Dr-Incognito/V2Ray-Desktop/releases.atom'
  name 'V2Ray-Desktop'
  homepage 'https://github.com/Dr-Incognito/V2Ray-Desktop'

  depends_on macos: '>= :sierra'

  app 'V2Ray-Desktop.app'
end
