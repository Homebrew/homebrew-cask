cask 'toontown-rewritten' do
  version :latest
  sha256 :no_check

  url 'https://download.toontownrewritten.com/launcher/mac/toontown_launcher_latest.dmg'
  name 'Toontown Rewritten'
  name 'Toontown Launcher'
  homepage 'https://toontownrewritten.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8037
  app 'Toontown Launcher.app', target: 'Toontown Rewritten.app'
end
