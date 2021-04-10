cask "tcl" do
  version "8.6.9.0,8.6.9.8609.2"
  sha256 "bd462de2a09198b95c94ac727264f36aebee83f0ac9aab7260150c4f5e0f5c3b"

  url "https://downloads.activestate.com/ActiveTcl/releases/#{version.before_comma}/ActiveTcl-#{version.after_comma}-macosx10.9-x86_64.pkg"
  name "ActiveTcl"
  homepage "https://www.activestate.com/products/tcl/"

  livecheck do
    url "https://www.activestate.com/products/tcl/downloads/"
    strategy :page_match
    regex(%r{href=.*?/ActiveTcl-(\d+(?:\.\d+)*)-macosx10.9-x86_64\.pkg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "ActiveTcl-#{version.after_comma}-macosx10.9-x86_64.pkg"

  uninstall pkgutil: "com.activestate.pkg.ActiveTcl#{version.major_minor}"
end
