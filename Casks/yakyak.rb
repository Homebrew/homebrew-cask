cask 'yakyak' do
  version '1.4.1'
  sha256 'bdf0b233e57d3735539a9a2a5df67b736c2544f6e59637e4740a25189d4a16c4'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-osx.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '562b8a3b70e12592c17707e9c1af500d5ea6e064b0ca235ae2862095fb167f77'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
