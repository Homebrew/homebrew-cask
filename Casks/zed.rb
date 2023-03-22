class ZedDownloadStrategy < CurlDownloadStrategy
  def _fetch(url:, resolved_url:, timeout:)
    curl_download url, to: temporary_path
    redirect_url = JSON.parse(temporary_path.read)["redirectURL"]
    rm_rf(temporary_path)
    super(url: url, resolved_url: redirect_url, timeout: timeout)
  end
end

cask "zed" do
  version "0.78.1"
  sha256 :no_check

  url "https://zed.dev/api/releases/95639680/Zed.dmg", using: ZedDownloadStrategy
  name "zed"
  desc "High-performance multiplayer code editor from the creators of Atom & Tree-sitter"
  homepage "https://zed.dev/"

  depends_on macos: ">= :catalina"

  app "Zed.app"

  uninstall quit: "dev.zed.Zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
