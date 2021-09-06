cask "webstorm" do
  version "2021.2.1,212.5080.54"

  if Hardware::CPU.intel?
    sha256 "804996ab30b890fc2e39158c2cadd0d07d97f0473d7a26304ce2577e94d0f58d"

    url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  else
    sha256 "9ad22b0a496ffdb638515102613ea7f96cadd4362f601f7aacf00e62d8fa754e"

    url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}-aarch64.dmg"
  end

  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["WS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
    "~/Library/Preferences/com.jetbrains.WebStorm.plist",
    "~/Library/Preferences/jetbrains.webstorm.*.plist",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Application Support/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
