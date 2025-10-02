cask "webstorm" do
  arch arm: "-aarch64"

  version "2025.2.3,252.26830.93"
  sha256 arm:   "370a43bb2461722eb4e2444ceca083d015991d5a53439cab1863ca9053524f67",
         intel: "69670d0be318ffa64ad00a1d0a4964a171a2557f128cab859f7e6546143957f3"

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.csv.first}#{arch}.dmg"
  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
    strategy :json do |json|
      json["WS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "WebStorm.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/webstorm.wrapper.sh"
  binary shimscript, target: "webstorm"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/WebStorm.app/Contents/MacOS/webstorm' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.jetbrains.WebStorm",
    "~/Library/Caches/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.WebStorm.plist",
    "~/Library/Preferences/jetbrains.webstorm.*.plist",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Preferences/webstorm.plist",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
