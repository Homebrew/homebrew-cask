cask 'v2rayu' do
  version '1.5.0'
  sha256 'd8b108ed5b63026a2163cab2bc715cc987c6b6e80c84b131aa598e09d01bc6b3'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
