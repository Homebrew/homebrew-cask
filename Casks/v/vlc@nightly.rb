cask "vlc@nightly" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_arch = on_arch_conditional arm: "-arm64", intel: "-intel64"

  on_arm do
    version "4.0.0,20241203-0413,e65b2754"
    sha256 "3168b23969ce752000277da3c42889b8e138eb8d5b69f8fb41dae758d63ad806"

    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{version.csv.second}/vlc-#{version.csv.first}-dev-arm64-#{version.csv.third}.dmg"
  end
  on_intel do
    version "4.0.0,20241203-0415,e65b2754"
    sha256 "72b52116bd7677490a2ca863d27fc6c232ff4cac1187922d3f8401a5baf66b12"

    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/#{version.csv.second}/vlc-#{version.csv.first}-dev-intel64-#{version.csv.third}.dmg"
  end

  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
  homepage "https://www.videolan.org/vlc/"

  livecheck do
    url "https://artifacts.videolan.org/vlc/nightly-macos-#{arch}/"
    regex(/href=.*?vlc[._-]v?(\d+(?:\.\d+)+)-dev#{livecheck_arch}-(\h+)\.dmg/i)
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
