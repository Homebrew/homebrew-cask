cask 'webstorm' do
  version '2017.3,173.3727.108'
  sha256 '499e478e9fb7c33987d9f71ed3c2c4cc6a2b1eb48f56ecc975ff8508202e4552'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '7768de62b10267f678dc1066810a4bda88cd15de341758a4bdc71345ceb26251'
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
