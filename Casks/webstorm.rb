cask "webstorm" do
  version "2021.1.2,211.7442.26"

  if Hardware::CPU.intel?
    sha256 "b6b99497f240687130936a6bf5533af206635ca9fb09a6d915ffa828b6010692"

    url "https://download.jetbrains.com/webstorm/WebStorm-#{version.before_comma}.dmg"
  else
    sha256 "644b1ed0a06faa47e3c6066236af51fac406946771741412dd25102c1b411657"

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
    "~/Library/Application Support/WebStorm#{version.major_minor}",
    "~/Library/Caches/WebStorm#{version.major_minor}",
    "~/Library/Logs/WebStorm#{version.major_minor}",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.webstorm.aaac0500.plist",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
