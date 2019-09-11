cask 'v2rayu' do
  version '1.4.0'
  sha256 '829fa5835e74c80c9b7e37d754305fd0d2cae2a44ea624597d5a150f068e50e9'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
