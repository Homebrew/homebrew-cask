cask 'unshaky' do
  version '0.6.0'
  sha256 'cb5d6be42e971863cce06462798000a2672aaff0987b9ef025bdf15172a330db'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
