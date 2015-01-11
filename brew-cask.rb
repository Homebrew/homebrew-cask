class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  url "https://github.com/caskroom/homebrew-cask.git", :tag => "v#{HBC_VERSION}"
  head "https://github.com/caskroom/homebrew-cask.git", :branch => "master"

  skip_clean "bin"

  def install
    man1.install "doc/man/brew-cask.1"
    prefix.install "lib" => "rubylib"
    inreplace "bin/brew-cask", "/lib", "/rubylib"

    prefix.install "Casks", "bin"
    (bin+"brew-cask").chmod 0755
  end

  test do
    system "#{bin}/brew-cask", "cask", "info", "google-chrome"
  end
end
