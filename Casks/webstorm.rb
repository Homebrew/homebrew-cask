cask 'webstorm' do
  version '2019.2,192.5728.87'
  sha256 '54b81870e51f886c29f755610caf3706ef994100f5e7c9b7ef0bab6e7bd97d48'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release'
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
