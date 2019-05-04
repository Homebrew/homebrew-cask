cask 'unshaky' do
  version '0.5.3'
  sha256 '6217c1574fa60d3eb7cd839cc9cb88529d3f7bb4688c362a7776929321f850c0'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
