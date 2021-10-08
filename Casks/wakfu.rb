cask "wakfu" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://download.wakfu.com/full/zip/"
  end

  name "Wakfu"
  desc "Wakfu is a massively multiplayer online role-playing video game"
  homepage "https://www.wakfu.com/"

  depends_on macos: ">= :sierra"

  app "Wakfu.app"

  caveats do
    depends_on_java "8+"
    <<~EOS
      To set the Java VM to use:
        https://support.ankama.com/hc/en-us/articles/360016121014-Recommended-Computer-Configurations
    EOS
  end
end
