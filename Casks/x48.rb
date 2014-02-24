class X48 < Cask
  url 'https://sites.google.com/a/sharkus.com/sharkus-com/Home/x48-0.6.4%20osx.zip'
  homepage 'http://blog.sharkus.com/2012/08/osx-hp48-emulators.html'
  version '0.6.4'
  sha256 '21184fceec8fd471d034932ac9b49f41c98cd5d730fa3fb02ccf0bcf02951f70'
  link 'x48-0.6.4 osx/x48.app'
  caveats <<-EOS.undent
    x48 requires XQuartz/X11, which can be installed via homebrew-cask by
        brew cask install xquartz
    or manually, by downloading the package from
        http://xquartz.macosforge.org
    EOS
end
