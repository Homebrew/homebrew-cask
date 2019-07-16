cask 'v2rayu' do
  version '1.3.3'
  sha256 '083d472ce092f7b93d5fc535875a2a5f08926569dce4bacf073b4874397f3136'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
