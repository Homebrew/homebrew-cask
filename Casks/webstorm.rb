cask "webstorm" do
  version "2021.1.1"

  if Hardware::CPU.intel?
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.dmg"
    sha256 "b62b35faa47c59ac552b6e0604fe1c8e63897a1d4477ba302574728a78c9759b"
  else
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}-aarch64.dmg"
    sha256 "1426e338dd372abad1b5b97b340fab5c02dd16b15348b8d151f85e829e3baa63"
  end

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
