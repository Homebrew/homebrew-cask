class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  url "https://github.com/caskroom/homebrew-cask.git", :tag => "v0.60.0"

  depends_on :ruby => "2.0"

  def install
  end

  def caveats
    <<-EOS.undent
      You can uninstall this formula as `brew tap Caskroom/cask` is now all that's
      needed to install Homebrew Cask and keep it up to date.
    EOS
  end

  test do
    system "brew", "cask", "info", "google-chrome"
  end
end
