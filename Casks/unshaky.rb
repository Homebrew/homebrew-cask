cask 'unshaky' do
  version '0.4.8'
  sha256 '6c5418c88e447f2f50cd572b2937366b672264d2d3127ecee1f7fd47b85e54fa'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
