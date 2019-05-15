cask 'v2rayu' do
  version '1.2.3'
  sha256 '60e0a4f539ee53054b61071d1e4b05c68b40c679b9021c9e88b7832317cb67b0'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
