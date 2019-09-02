cask 'unshaky' do
  version '0.5.6'
  sha256 '8d0ed13d2b02e93b067dfa43121abcaaeb16ae6638e54f14e38cc99ff62a295b'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
