cask 'yakyak' do
  version '1.2.3'
  sha256 'a76eb88acecdea7de4e7ecdc993df8c425f6e1fcd80341c0738491aaf108de9a'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-osx.app.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: 'a59249625267737a094b89e158d322642038b6269819dc1fc11c296cdef32b4e'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'
  license :mit

  app 'Yakyak.app'
end
