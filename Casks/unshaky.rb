cask 'unshaky' do
  version '0.4.2'
  sha256 '01348fac97c341b58b832fb679b22ae6062f176801892505a2eceaacc042b7fe'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
