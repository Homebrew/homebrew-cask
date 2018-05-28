cask 'wey' do
  version '0.3.0'
  sha256 'b0d596aa92b0eb40181fba9201ed7604d1df3b0d6ce62d8e913cd1e99e1dd966'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom',
          checkpoint: '1030d04b556eb389d330ae05cb127cc6b49b6d1c96a3cd9d0764391c85dbc0ed'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
