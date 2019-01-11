cask 'webstorm' do
  version '2018.3.3,183.5153.33'
  sha256 '5c46b1b98739ef1426f2aac2f9bb3074b505e75993b51def29f12addb4f0e0c9'

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
