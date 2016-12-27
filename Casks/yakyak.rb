cask 'yakyak' do
  version '1.4.1'
  sha256 '4a6e0cce10c6d8e4015b8b5d027590d3d26b982472c65c2be666a8e2c50af229'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '58eea7b353f84ff5ca98853838423d57df350e5f68705881361dd7ad646a2108'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
