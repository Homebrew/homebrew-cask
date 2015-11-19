begin
  require Pathname(__FILE__).realpath.dirname.join("lib", "hbc", "version")
rescue
  # todo: transitional, defensive, should not be needed.
  # remove the begin/rescue logic after 1 Feb 2015
  require Pathname(__FILE__).realpath.dirname.join("lib", "cask", "version")
  HBC_VERSION = HOMEBREW_CASK_VERSION
end

# NOTE: Keep in sync with `find_ruby_2_plus` in `/bin/brew-cask`.
class Ruby20Requirement < Requirement
  fatal true
  default_formula "ruby"

  satisfy :build_env => false do
    result = false
    favorite_ruby =
      "/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/bin/ruby"

    if File.executable?(favorite_ruby)
      result = true
    else
      rubies = `/usr/bin/type -aP ruby`.split("\n")
      rubies += [
        "/usr/local/bin/ruby",
        "#{`brew --repository 2>/dev/null`.strip}/bin/ruby",
      ]

      rubies.uniq.each do |ruby|
        version = /\d\.\d/.match(`#{ruby} --version 2>/dev/null`)

        if version && Version.new(version.to_s) >= Version.new("2.0")
          result = true
          break
        end
      end
    end

    result
  end

  env do
    ENV.prepend_path "PATH", which("ruby").dirname
  end

  def message; <<-EOS.undent
    brew-cask needs Ruby >=2.0
    EOS
  end
end

class BrewCask < Formula
  homepage "https://github.com/caskroom/homebrew-cask/"
  url "https://github.com/caskroom/homebrew-cask.git", :tag => "v#{HBC_VERSION}"
  head "https://github.com/caskroom/homebrew-cask.git", :branch => "master"

  skip_clean "bin"

  depends_on Ruby20Requirement

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
