cask 'unshaky' do
  version '0.3.2'
  sha256 '4e320d3acce9d68ba92e9cf73ee93a28fb3e5bcc1286aca693f88e5b8a23b342'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.app.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
