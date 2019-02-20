cask 'touchswitcher' do
  version '1.0.1,100'
  sha256 'f7bc7cdf143e0b803c97846bac154fbd20305bc9be3289e43f9604968df839fc'

  url 'https://hazeover.com/touchswitcher/TouchSwitcher.zip'
  appcast 'https://hazeover.com/touchswitcher/updates.xml'
  name 'TouchSwitcher'
  homepage 'https://hazeover.com/touchswitcher.html'

  depends_on macos: '>= :sierra'

  app 'TouchSwitcher.app'
end
