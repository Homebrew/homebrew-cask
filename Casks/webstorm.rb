cask 'webstorm' do
  version '2017.3.1,173.3942.31'
  sha256 '609e3f401ff85f05bcab27ba84267bb2d8b3fce971755145e16396021fb9ff03'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '5c9204fc180f6da8d32345e9f9f944cc9aa33864fe756109c0ef0a8287e78504'
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'

  auto_updates true

  app 'WebStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'wstorm') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/WebStorm#{version.major_minor}",
               "~/Library/Caches/WebStorm#{version.major_minor}",
               "~/Library/Logs/WebStorm#{version.major_minor}",
               "~/Library/Preferences/WebStorm#{version.major_minor}",
               '~/Library/Preferences/jetbrains.webstorm.aaac0500.plist',
               '~/Library/Saved Application State/com.jetbrains.WebStorm.savedState',
             ]
end
