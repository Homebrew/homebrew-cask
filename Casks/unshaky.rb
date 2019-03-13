cask 'unshaky' do
  version '0.4.3'
  sha256 'a94ea9dfd85edeecf0deb310baa59e989936ee754411d0ed0811c4a829e7df76'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
