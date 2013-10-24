class X48 < Cask
  url 'https://sites.google.com/a/sharkus.com/sharkus-com/Home/x48-0.6.4%20osx.zip'
  homepage 'http://blog.sharkus.com/2012/08/osx-hp48-emulators.html'
  version '0.6.4'
  sha1 '8b7390fccaf682eb9f02a09889060ac65e60f561'
  link 'x48-0.6.4 osx/x48.app'

  def caveats; <<-EOS.undent
    x48 requires XQuartz/X11 to be installed,which can be done as:
        brew cask install x-quartz
    or from:
        http://xquartz.macosforge.org
    EOS
  end

end
