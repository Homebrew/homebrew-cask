cask 'todour' do
  version '2.17'
  sha256 'da613d60809a254c41a34493275fb07c46128238a7a685d7e197e231729f47a0'

  url "https://nerdur.com/Todour-v#{version}.dmg"
  appcast 'https://github.com/SverrirValgeirsson/Todour/releases.atom'
  name 'Todour'
  homepage 'https://nerdur.com/todour-pl/'

  app 'Todour.app'
end
