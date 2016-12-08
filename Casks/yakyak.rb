cask 'yakyak' do
  version '1.4.1'
  sha256 'c16d4e5276a0a39742d5e9389967b5dcd180afb4db074ffa156a1f627b421671'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '50ab8f3dd67c702ce239d8e25d71ff391c4a2fca3cbd87ab2511e7b166f1ebb4'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
