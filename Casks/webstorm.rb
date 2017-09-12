cask 'webstorm' do
  version '2017.2.4,172.4155.35'
  sha256 '6e12c52312fbb1b04d8f1488c571e9acbdb8701f3454d6c0d728ecd7280bc0bc'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '4c151dd8e1028caf4100ea6e45b233f4097c8b18fa54274a841ef9a7760f248d'
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'

  auto_updates true

  app 'WebStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'wstorm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap delete: [
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.WebStorm.savedState',
              ],
      trash:  [
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                '~/Library/Preferences/jetbrains.webstorm.aaac0500.plist',
              ]
end
