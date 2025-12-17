cask "vlc@nightly" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "intel64"

  on_arm do
    version "4.0.0,20251217-0413,afee5055"
    sha256 "4f7239d793ca180dc28032c0f64a31602abee757642e1fb2d78cc890e600f73e"
  end
  on_intel do
    version "4.0.0,20251217-0411,afee5055"
    sha256 "d6ac3ec031439673e903d4e45c8613f6445e8e84bbe243d97bb3c9eb8869f522"
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
