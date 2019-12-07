cask 'v2rayu' do
  version '1.5.1'
  sha256 'b55bc450772c9a7eb75c8a15fb51864cf97aa1706a556b1c01b4652c011ce388'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
