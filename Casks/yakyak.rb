cask 'yakyak' do
  version '1.5.8'
  sha256 'c274d3ff966cd7399432344ce2a701025f9f9a325f28f0255ba74fb203bab91e'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'YakYak-darwin-x64/YakYak.app'
end
