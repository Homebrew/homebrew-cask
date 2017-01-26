cask 'timer-app' do
  version '1.1.0'
  sha256 'e0d75fbcd65b54127810b47ff06db4cb8be1b37585969155e3c00d2a7a482f24'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  name 'Timer App'
  homepage 'https://github.com/michaelvillar/timer-app'

  # Renamed to avoid conflict with timer.
  app 'Timer.app', target: 'Timer App.app'
end
