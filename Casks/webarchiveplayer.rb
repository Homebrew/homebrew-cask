cask 'webarchiveplayer' do
  version '1.3.0'
  sha256 'c805ed32f7c49e7736bbb31b92e215cdb03843af66aa72ef7c41640ca447674c'

  url "https://github.com/ikreymer/webarchiveplayer/releases/download/#{version}/webarchiveplayer.dmg"
  appcast 'https://github.com/ikreymer/webarchiveplayer/releases.atom',
          checkpoint: 'a7e74d747990945fd55b7e097abb39918d2670fa3414bc26027cea7d6a0c9006'
  name 'webarchiveplayer'
  homepage 'https://github.com/ikreymer/webarchiveplayer'
  license :gpl

  app 'webarchiveplayer.app'
end
