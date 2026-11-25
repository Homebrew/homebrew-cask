cask "writer" do
  version "0.8.0"
  sha256 "b651ddd976417404a85afd24684078d98c6551078691cfbafd2eee3373f37300"

  url "https://github.com/joelbqz/writer-computer/releases/download/v#{version}/Writer_#{version}_aarch64.dmg"
  name "Writer"
  desc "Local-first Markdown editor"
  homepage "https://writer.computer/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Writer.app"
  binary "#{appdir}/Writer.app/Contents/MacOS/desktop", target: "writer"

  zap trash: [
    "~/Library/Application Support/com.writer-computer",
    "~/Library/Caches/com.writer-computer",
    "~/Library/WebKit/com.writer-computer",
  ]
end
