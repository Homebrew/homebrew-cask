cask 'yakyak' do
  version '1.4.0'
  sha256 'aa06c8692dea8b4cfae45869fb2c21be8697f4d68136c9729f2a2c40b86cd416'

  url "https://github.com/yakyak/yakyak/releases/download/v#{version}/yakyak-#{version}-darwin-x64.zip"
  appcast 'https://github.com/yakyak/yakyak/releases.atom',
          checkpoint: '212e6a2f6b1efcb72d3f2354f3e4207a8aa8b32fb4beb2e7078bea317a82a7dd'
  name 'Yakyak'
  homepage 'https://github.com/yakyak/yakyak'

  app 'yakyak-darwin-x64/Yakyak.app'
end
