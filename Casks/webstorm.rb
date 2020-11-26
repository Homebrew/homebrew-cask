cask "webstorm" do
  version "2020.2.4,202.8194.6"
  sha256 "5f8559b775ce5cb7ddb76475f97f8da1e33a120c42c4ebe2e928032a2dcf7072"

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  auto_updates true

  app "WebStorm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "wstorm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/WebStorm#{version.major_minor}",
    "~/Library/Caches/WebStorm#{version.major_minor}",
    "~/Library/Logs/WebStorm#{version.major_minor}",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.webstorm.aaac0500.plist",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
