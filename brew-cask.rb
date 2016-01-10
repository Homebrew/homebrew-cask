class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  url "https://github.com/caskroom/homebrew-cask.git", :tag => "v0.60.1"

  depends_on :ruby => "2.0"

  def install
    (buildpath/"UPGRADE").write <<-EOS.undent
      You must uninstall this formula. It is no longer needed to stay up to date,
      as Homebrew now takes care of that automatically.
    EOS
    prefix.install "UPGRADE"
  end

  def caveats
    <<-EOS.undent
      You must uninstall this formula as `brew tap Caskroom/cask` is now all that's
      needed to install Homebrew Cask and keep it up to date.
    EOS
  end

  test do
    system "brew", "cask", "info", "google-chrome"
  end
end
