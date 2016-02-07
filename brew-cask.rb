class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  url "https://github.com/caskroom/homebrew-cask.git", :tag => "v0.60.1"

  depends_on :ruby => "2.0"

  UNINSTALL_MSG = <<-EOS.undent
    You must uninstall this formula. It is no longer needed to stay up to date,
    as Homebrew now takes care of that automatically.
  EOS

  def install
    (buildpath/"UPGRADE").write UNINSTALL_MSG
    prefix.install "UPGRADE"
  end

  def caveats
    UNINSTALL_MSG
  end

  test do
    system "brew", "cask", "info", "google-chrome"
  end
end
