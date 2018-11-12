cask 'touchswitcher' do
  version :latest
  sha256 :no_check

  url 'https://hazeover.com/touchswitcher/TouchSwitcher.zip'
  appcast 'https://hazeover.com/touchswitcher/updates.xml'
  name 'TouchSwitcher'
  homepage 'https://hazeover.com/touchswitcher.html'

  app 'TouchSwitcher.app'
end
