cask 'touchswitcher' do
  version '1.3'
  sha256 '2a6cf1b432fd2611758dfadf33904acc953f937989cfc80e16606e0b22acdfb7'

  url 'https://hazeover.com/touchswitcher/TouchSwitcher.zip'
  appcast 'https://hazeover.com/touchswitcher/updates.xml'
  name 'TouchSwitcher'
  homepage 'https://hazeover.com/touchswitcher.html'

  depends_on macos: '>= :sierra'

  app 'TouchSwitcher.app'
end
