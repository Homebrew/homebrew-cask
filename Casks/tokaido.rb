cask 'tokaido' do
  version '2.2'
  sha256 '150f76ada617ad7588803cd987da8f790695eaa2779e55ca4b3405698ab4388c'

  url "https://github.com/tokaido/tokaidoapp/releases/download/v#{version}/Tokaido.zip"
  appcast 'https://github.com/tokaido/tokaidoapp/releases.atom',
          checkpoint: '81178263b6362780344767f76a57ee328bab77ce02d89909c86fac1b9cea3319'
  name 'Tokaido'
  homepage 'https://github.com/tokaido/tokaidoapp'

  app 'Tokaido.app'
end
