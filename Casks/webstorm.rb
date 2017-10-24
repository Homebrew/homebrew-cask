cask 'webstorm' do
  version '2017.2.5,172.4343.25'
  sha256 'b0edebd3d2d553b3a5d1a7129b219ce9f27e14c1053da6c7a825433546ff31e3'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: 'b9ac13b73c3fdccf4a69daa57bfbfaa350527792a803cb1f8c23f884335750a0'
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
