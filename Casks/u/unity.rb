cask "unity" do
  arch arm: "Arm64"
  livecheck_arch = on_arch_conditional arm: "ARM64", intel: "X86_64"

  version "6000.6.9f1,8c45277fb9c5"
  sha256 arm:   "7d73299e668f25c21109e93fb3c5329c43ff36297a824e80763c3d520b3af4bc",
         intel: "0037a8ef93e66e2452aef4cf7430dcad5502d76c4d1eb1397a50d6b6c9d3d476"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/"

  livecheck do
    url "https://services.api.unity.com/unity/editor/release/v1/releases?platform=MAC_OS&stream=SUPPORTED&architecture=#{livecheck_arch}&limit=1&offset=0"
    regex(%r{/(\h+)/MacEditorInstaller#{arch}/Unity[._-]v?(\d+(?:\.\d+)+(?:f\d+)?)\.pkg}i)
    strategy :json do |json, regex|
      match = nil
      json["results"]&.each do |item|
        item["downloads"]&.each do |download|
          match = download["url"]&.match(regex)
          break if match
        end
        break if match
      end
      next unless match

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on cask: "unity-hub"
  depends_on :macos

  pkg "Unity-#{version.csv.first}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"

  zap delete: "/Library/Application Support/Unity",
      trash:  [
        "/Library/Application Support/Unity",
        "~/Library/Application Support/Unity*",
        "~/Library/Caches/com.unity3d.UnityEditor",
        "~/Library/Logs/Unity",
        "~/Library/Preferences/com.unity.BugReporterV2.plist",
        "~/Library/Preferences/com.unity3d.UnityEditor5.x.plist",
        "~/Library/Preferences/com.unity3d.unityhub.plist",
        "~/Library/Preferences/unity.DefaultCompany.*",
        "~/Library/Saved Application State/com.unity3d.unityhub.savedState",
        "~/Library/Unity",
      ]
end
