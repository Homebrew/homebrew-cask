cask "vlc@nightly" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel64"

  on_arm do
    version "4.0.0,20250208-0413,863a5b8d"
    sha256 "4761d542c5641c80e8ff0ac2453f33190e6d508f8e7046fe23bdb68a3f8988f1"
  end
  on_intel do
    version "4.0.0,20250208-0411,863a5b8d"
    sha256 "821db10e1036762428a8d7ac254370273fb5ed8fbcb0046fcba7334c89004eab"
  end

  url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{version.csv.second}/vlc-#{version.csv.first}-dev-#{livecheck_arch}-#{version.csv.third}.dmg"
  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/"
    regex(/href=.*?vlc[._-]v?(\d+(?:\.\d+)+)[._-]dev[._-]#{livecheck_arch}[._-](\h+)\.dmg/i)
    strategy :page_match do |page, regex|
      directory = page.scan(%r{href=["']?v?(\d+(?:[.-]\d+)+)/?["' >]}i)
                      .flatten
                      .uniq
                      .max
      next if directory.blank?

      # Fetch the directory listing page for newest build
      build_response = Homebrew::Livecheck::Strategy.page_content(
        "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{directory}/",
      )
      next if (build_page = build_response[:content]).blank?

      match = build_page.match(regex)
      next if match.blank?

      "#{match[1]},#{directory},#{match[2]}"
    end
  end

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
