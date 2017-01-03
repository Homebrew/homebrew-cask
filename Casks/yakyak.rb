cask 'yakyak' do
  version '1.4.1'
  sha256 'e04114936825fff1be79c8eae5f2154e9b275428381da7870f97e24320effb3f'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '58eea7b353f84ff5ca98853838423d57df350e5f68705881361dd7ad646a2108'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
