cask "unity" do
  arch arm: "Arm64"
  livecheck_arch = on_arch_conditional arm: "ARM64", intel: "X86_64"

  version "6000.5.3f1,c2eb47b3a2a9"
  sha256 arm:   "6c2a1bf9d73ce21ea5c2370193b005ccbe1a6d64597c9dc1d49a2b2d72586913",
         intel: "a32dd3e4a90578e528663fb13547a16274169f5fb083c3d28f8f27532bf3e296"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorInstaller#{arch}/Unity-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
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

  depends_on :macos
  depends_on cask: "unity-hub"

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
