cask 'v2rayu' do
  version '1.4.1'
  sha256 'ed505f5445292cd38b4b7c55fa3194dafccb06dbb027335c9a5cae5ad114001f'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
