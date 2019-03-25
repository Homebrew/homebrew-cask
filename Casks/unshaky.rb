cask 'unshaky' do
  version '0.4.4'
  sha256 'a1210604185037049b0d62a895315da229a86c34c8806c0f310697f9b5d92b5b'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
