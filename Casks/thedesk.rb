cask 'thedesk' do
  version '18.1.2'
  sha256 'c43d137d2a7ad1d000e200d5a91e525fde396b137677e261b952a5e9ef7c8f4e'

  # github.com/cutls/TheDesk was verified as official when first introduced to the cask
  url "https://github.com/cutls/TheDesk/releases/download/m#{version}/TheDesk-darwin-x64.zip"
  appcast 'https://github.com/cutls/TheDesk/releases.atom'
  name 'TheDesk'
  homepage 'https://thedesk.top/'

  app 'TheDesk-darwin-x64/TheDesk.app'
end
