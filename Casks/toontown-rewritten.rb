cask :v1 => 'toontown-rewritten' do
  version :latest
  sha256 :no_check

  url 'https://download.toontownrewritten.com/launcher/mac/toontown_launcher_latest.dmg'
  name 'toontown-rewritten'
  homepage 'https://toontownrewritten.com'
  license :unknown

  app 'Toontown Launcher.app'
end
