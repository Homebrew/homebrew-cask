cask 'tokaido' do
  version '2.2'
  sha256 '150f76ada617ad7588803cd987da8f790695eaa2779e55ca4b3405698ab4388c'

  url "https://github.com/tokaido/tokaidoapp/releases/download/v#{version}/Tokaido.zip"
  appcast 'https://github.com/tokaido/tokaidoapp/releases.atom',
          checkpoint: 'cb947717a16d9b01848f9929490338892ce3833b09566dccac494e251e598303'
  name 'Tokaido'
  homepage 'https://github.com/tokaido/tokaidoapp'

  app 'Tokaido.app'
end
