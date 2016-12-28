cask 'whale' do
  version '0.5.2'
  sha256 'd473d9643d0fd74d624b91bf43bf4a4d381643fb2ff43816bc01b2566a9eb3d5'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '86e9d0c69c3eee59fbb0a568ecf226f48e7492c22eb49dfd890702841a468ad3'
  name 'Whale'
  homepage 'https://github.com/1000ch/whale'

  app 'Whale.app'
end
