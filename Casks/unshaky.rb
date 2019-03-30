cask 'unshaky' do
  version '0.4.5'
  sha256 'f2b534fddde64193ee6621ec1b33fb73edfc10f86aa5f6fa16c621c824713dae'

  url "https://github.com/aahung/Unshaky/releases/download/v#{version}/Unshaky_v#{version}.zip"
  appcast 'https://github.com/aahung/Unshaky/releases.atom'
  name 'Unshaky'
  homepage 'https://github.com/aahung/Unshaky'

  depends_on macos: '>= :sierra'

  app 'Unshaky.app'
end
