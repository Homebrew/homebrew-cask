cask 'touchswitcher' do
  version '1.8.1,738'
  sha256 '6b1185a16d9d4950d9324c57906df844f959df3ffd308bcaba6dae49ae4ff1c5'

  url 'https://hazeover.com/HazeOver.dmg'
  appcast 'https://hazeover.com/updates.xml'
  name 'TouchSwitcher'
  homepage 'https://hazeover.com/touchswitcher.html'

  depends_on macos: '>= :sierra'

  app 'TouchSwitcher.app'
end
