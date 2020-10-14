cask "transcriptions" do
  version "1.3"
  sha256 "c0aa6654c16dc05195cc88113323f2cfe2ce2a0a5ea85e95e42692d0b144205e"

  # github.com/soleil-alpin was verified as official when first introduced to the cask
  url "https://github.com/soleil-alpin/Transcriptions/releases/download/v#{version}/Transcriptions.app.zip"
  appcast "https://github.com/soleil-alpin/Transcriptions/releases.atom"
  name "Transcriptions"
  desc "Text editor for fast manual transcription"
  homepage "https://soleil-alpin.com/Transcriptions/"

  depends_on macos: ">= :catalina"

  app "Transcriptions.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.davidhas.transcriptions.sfl2",
    "~/Library/Application Scripts/com.davidhas.Transcriptions",
    "~/Library/Containers/com.davidhas.Transcriptions",
  ]
end
