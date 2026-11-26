cask "yandex-document" do
  version "1.2.7"
  sha256 "6aa81950d0e3865a143cddc29db4a11158a1a69438aa31d911a4a23933405d87"

  url "https://cdn.docs.yandex.net/releases/public/#{version}/macos/universal/yandex-document.pkg"
  name "Yandex Document"
  name "Яндекс Документы"
  desc "Document and spreadsheet editor"
  homepage "https://360.yandex.ru/documents/desktop/"

  livecheck do
    url "https://cdn.docs.yandex.net/channels/public/stable/macos/universal/manifest.json"
    strategy :json do |json|
      json.dig("signed", "release", "version")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "yandex-document.pkg"

  uninstall launchctl: "com.yandex.docs.document.updater.helper.v2",
            quit:      "com.yandex.docs.document",
            pkgutil:   "com.yandex.docs.document"

  zap trash: [
    "/Library/Application Support/com.yandex.docs.document.updater",
    "/Library/Application Support/Yandex Document",
    "/var/db/com.yandex.docs.document.updater-migrations",
    "/var/log/yandex-document",
    "~/Library/Application Support/Yandex Document",
    "~/Library/Logs/Yandex Document",
    "~/Library/Preferences/com.yandex.docs.document.plist",
  ]
end
