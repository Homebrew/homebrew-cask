cask 'v2rayu' do
  version '1.3.1'
  sha256 '25c1c0818b8d5d75dddb9a13b46430bceb3aad2775c4ef5f73a2424bcf58f17c'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
