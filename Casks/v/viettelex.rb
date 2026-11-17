cask "viettelex" do
  version "1.9.12"
  sha256 "7bb0e5475cd445119bbbf54b96d4be189cdff5d8ef3dd154e823451c5959bad7"

  url "https://github.com/ptrinh/viettelex/releases/download/v#{version}/VietTelex-#{version}.app.zip"
  name "VietTelex"
  name "ViệtTelex"
  desc "Vietnamese Telex and VNI input method"
  homepage "https://viettelex.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  input_method "VietTelex.app"

  uninstall quit: "com.viettelex.inputmethod.telex"

  zap trash: [
    "~/Library/Application Support/com.viettelex.inputmethod.telex",
    "~/Library/Caches/com.viettelex.inputmethod.telex",
    "~/Library/HTTPStorages/com.viettelex.inputmethod.telex",
    "~/Library/Preferences/com.viettelex.inputmethod.telex.plist",
    "~/Library/Preferences/com.viettelex.settings.plist",
  ]

  caveats do
    logout
  end
end
