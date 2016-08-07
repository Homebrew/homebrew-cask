cask 'vectr' do
  version '0.1.9'
  sha256 '1f5331eb0af93e49545fc7257a0901b70a80a779e26b354bb4b71e3de37a198c'

  url "https://download.vectr.com/desktop/Vectr-darwin-x64-#{version}.zip"
  name 'Vectr'
  homepage 'https://vectr.com'
  license :gratis

  app 'Vectr-darwin-x64/Vectr.app'
end
