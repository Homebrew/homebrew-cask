cask 'webstorm' do
  version '2017.2.3,172.3968.27'
  sha256 '518b74cf872e5fd51e0cba94b17d490faad23ef6a58160feea6f4be39bc4aa96'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '907ba10b8138d1695638ae904e960714fbe445ec5ff6d3ba92a9ca0d44677fff'
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
