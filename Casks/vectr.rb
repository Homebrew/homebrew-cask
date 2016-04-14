cask 'vectr' do
  version :latest
  sha256 :no_check

  url "https://vectr.com/desktop/mac/latest"
  name 'Vectr'
  homepage 'https://vectr.com'
  license :gratis

  app "Vectr-darwin-x64/Vectr.app"
end
