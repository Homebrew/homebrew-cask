cask "whatsapp-catalyst" do
  version "2.23.5.79"
  sha256 :no_check

  url "https://web.whatsapp.com/desktop/mac_native/release/"
  name "whatsapp-catalyst"
  desc "Native WhatsApp for macOS"
  homepage "https://www.whatsapp.com/download"

  app "WhatsApp.app"
end
