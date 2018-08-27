cask 'xguardian' do
  version '0.1'
  sha256 '5abb7b4fe1599829f5fbf57c8220060fa75c6d4cd493db63e0f2d34b1096bc07'

  url "https://github.com/openscanner/XGuardian/releases/download/#{version}/XGuardian.app.zip"
  appcast 'https://github.com/openscanner/XGuardian/releases.atom'
  name 'XGuardian'
  homepage 'https://github.com/openscanner/XGuardian/'

  app 'XGuardian.app'

  zap trash: [
               '~/Library/Application Support/xguardian',
               '~/Library/Caches/cc.openscanner.XGuardian',
             ]
end
