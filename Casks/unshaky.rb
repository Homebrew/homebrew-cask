cask 'unshaky' do
  version '0.5.1'
  sha256 '308c3d90e293f5d23abe2574dac4be075f4ad3db3b12d46c74997697cca64549'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
