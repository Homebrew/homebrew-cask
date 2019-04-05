cask 'unshaky' do
  version '0.4.6'
  sha256 'c04ae51ee8cb38e9db75b61a5b0b8592df65855a5765b9f4a688a6bb28eab7f0'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
