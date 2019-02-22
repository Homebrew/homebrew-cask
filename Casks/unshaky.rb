cask 'unshaky' do
  version '0.3.3'
  sha256 'c4ebb71fba0a93d4c6777011e6962adeedb1efe6fceb56f9267788585253b2c3'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
