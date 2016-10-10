cask 'yakyak' do
  version '1.3.2'
  sha256 '640babcfaf5dee05442da3919f2d81f177df0be3d3c96108b4a2f720366bcdb6'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'f67b5a42c826e263fa3a373ee1fa7de7c9df5bb36e47c53d15a021ef8d2053ca'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'Yakyak.app'
end
