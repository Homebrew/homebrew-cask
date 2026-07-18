cask "webstorm" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.259"
  sha256 arm:   "baec7e9e62fddd894233339bb80d91d0362360bc75869fafb437f75208fc443a",
         intel: "55fee4b913bfa3b32bb2b42e2581e8e86bea0caefd0d40ad6300746bf4242c88"

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
  depends_on :macos

  app "WebStorm.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "webstorm.wrapper.sh",
                  target:  "webstorm",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/WebStorm.app/Contents/MacOS/webstorm' "$@"
                  EOS

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
