cask 'webarchiveplayer' do
  version '1.4.7'
  sha256 'a74f56e3c1b797c3c3063faa2555033a027f7122e21517d4acc1eed9825c0df9'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
