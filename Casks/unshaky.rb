cask 'unshaky' do
  version '0.5.4'
  sha256 '116443f801fbed3487ac19bd9ed9fc8c9843e7501df2fa43f50b85076bd7d46a'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
