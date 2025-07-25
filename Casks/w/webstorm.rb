cask "webstorm" do
  arch arm: "-aarch64"

  version "2025.1.4.1,251.27812.50"
  sha256 arm:   "6840c346c133f3d1ed0eb41ba2f0195b32a70eb69884c66af408c51ebdb6825a",
         intel: "d77d8a8547cd0ca8a97dc8e4164f169e470d26bfe51274d0a4456ed4d856d226"

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
