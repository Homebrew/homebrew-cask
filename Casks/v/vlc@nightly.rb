cask "vlc@nightly" do
  arch arm: "arm64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/" do |page|
    folder_path = page[%r{\d+-\d+/}]
    url URI.join(page.url, folder_path) do |version_page|
      file_path = version_page[/href="([^"]+.dmg)"/, 1]
      URI.join(version_page.url, file_path)
    end
  end
  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
  homepage "https://www.videolan.org/vlc/"

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "vlc"

  app "VLC.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*",
    "~/Library/Application Support/org.videolan.vlc",
    "~/Library/Application Support/VLC",
    "~/Library/Caches/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
