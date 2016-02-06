cask 'vectr' do
  version '0.1.8'
  sha256 'c160ed7897c42664b3792757deeb16775719ab1bf9ff0c3d4be47299e8a5a238'

  url "https://download.vectr.com/desktop/vectr-mac-#{version}.zip"
  name 'Vectr'
  homepage 'https://vectr.com'
  license :gratis

  app "vectr-mac-#{version}/Vectr.app"
end
