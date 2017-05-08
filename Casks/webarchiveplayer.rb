cask 'webarchiveplayer' do
  version '1.4.7'
  sha256 'a74f56e3c1b797c3c3063faa2555033a027f7122e21517d4acc1eed9825c0df9'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: 'c57abc9633d036e8da8f08aed03b33df1a4539619ee2d6db908d7edfe889576d'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'

  app 'webarchiveplayer.app'
end
