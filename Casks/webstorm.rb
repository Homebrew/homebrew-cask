cask 'webstorm' do
  version '2017.1.2,171.4249.40'
  sha256 '704124e005a819faa53dfa80d8705a29f8c395e8d66dfa4a2760aaf66aeaef81'

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release',
          checkpoint: '1363240a69d580393b24d64ff606a2084e6a6a9770129d4cdcd2d583fbffe7f9'
  name 'WebStorm'
  homepage 'https://www.jetbrains.com/webstorm/'

  auto_updates true
  conflicts_with cask: 'webstorm-eap'

  app 'WebStorm.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'wstorm') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Application Support/WebStorm#{version.major_minor}",
                "~/Library/Caches/WebStorm#{version.major_minor}",
                "~/Library/Logs/WebStorm#{version.major_minor}",
                "~/Library/Preferences/WebStorm#{version.major_minor}",
                '~/Library/Preferences/jetbrains.webstorm.aaac0500.plist',
                '~/Library/Saved Application State/com.jetbrains.WebStorm.savedState',
              ]
end
