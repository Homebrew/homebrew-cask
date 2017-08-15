cask 'webstorm' do
  version '2017.2.1,172.3544.34'
  sha256 '65b85bf084fc4e239fe71367a51f29b3fc048a9b64f3fc8f59a6116f3a89d41e'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '74665d5c7099e98dc88a82aa5e70f25a614bba49246b84deab79008b29520e6e'
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
