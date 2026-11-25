cask "vimediamanager" do
  version "0.7a24,2026_04_01"
  sha256 "217bec52ba71d7d046ce6b0913652162b5e652112778a3895743962bee451729"

  version_suffix = "-#{version.csv.second}" if version.csv.second
  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.csv.first}/ViMediaManager#{version_suffix}.zip"
  name "ViMediaManager"
  desc "Manage digital artifacts for your movie, television and anime collections"
  homepage "https://github.com/vidalvanbergen/ViMediaManager"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+[a-z]\d+)/ViMediaManager[._-]v?(\d+(?:[._]\d+)+)\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match.values_at(1, 2).compact_blank.join(",")
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "ViMediaManager.app"

  zap trash: [
    "~/Library/Application Support/ViMediaManager",
    "~/Library/Caches/com.vidalvanbergen.vimediamanager-alpha",
    "~/Library/Preferences/com.vidalvanbergen.vimediamanager-alpha.plist",
    "~/Library/Saved Application State/com.vidalvanbergen.vimediamanager-alpha.savedState",
  ]
end
