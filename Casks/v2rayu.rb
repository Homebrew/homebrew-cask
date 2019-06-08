cask 'v2rayu' do
  version '1.3.2'
  sha256 '0bdfbce597c608e7014082dca15d6b8ef344bd58e45f88c6a799ba3b3e70bcfa'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
