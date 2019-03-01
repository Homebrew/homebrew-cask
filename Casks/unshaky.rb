cask 'unshaky' do
  version '0.4.1'
  sha256 '39a1ae95ac70b8f3bd8506ca5e0b8bbf1deb3d515d588c639fca5e9e0a364673'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
