cask 'todour' do
  version '2.16'
  sha256 'c2c00c3210483dd77ef00038787a64de87fe45c68446c269fda1bddaf23ce8f5'

  url "https://nerdur.com/Todour-v#{version}.dmg"
  appcast 'https://github.com/SverrirValgeirsson/Todour/releases.atom'
  name 'Todour'
  homepage 'https://nerdur.com/todour-pl/'

  app 'Todour.app'
end
