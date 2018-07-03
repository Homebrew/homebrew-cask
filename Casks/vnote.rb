cask 'vnote' do
  version '1.19'
  sha256 '34de409d13061f2293d68d5c901ffec582e002225afc2e50dd22fe128ca0dfc3'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
