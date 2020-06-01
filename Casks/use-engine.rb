cask 'use-engine' do
  version '2.2.5'
  sha256 '7ec4d9da00b7c9637bd092fb14a3d24d24bc66aff5bfd91da08c58ed8c824a95'

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name 'USE Engine'
  homepage 'https://www.use-together.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'USE Engine.app'

  zap trash: '~/Library/Application Support/OPEXMedia/USE Engine'
end
