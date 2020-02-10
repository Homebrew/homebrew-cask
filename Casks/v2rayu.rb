cask 'v2rayu' do
  version '2.0.0'
  sha256 'c873165a4e4960770fe18deb89ae930d94c77bede20921383e297010bc2b03c6'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
