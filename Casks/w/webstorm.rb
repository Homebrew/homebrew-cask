cask "webstorm" do
  arch arm: "-aarch64"

  version "2025.1.1,251.25410.117"
  sha256 arm:   "7acfa46536b598b576775892ac46bb570dd06bc9461cc58c51b9efd4afd09139",
         intel: "44363b71b4ad461c07c2c0ae8424f6efabe356b347a2974765f88549a8ee183c"

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
  depends_on macos: ">= :high_sierra"

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
