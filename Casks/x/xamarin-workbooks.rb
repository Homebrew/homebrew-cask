cask "xamarin-workbooks" do
  version "1.5.0"
  sha256 "1fb3cebb67d0fc68f56a38485ea7ea015f7b294893455c458dc39a2b63d1d6dd"

  url "https://github.com/Microsoft/workbooks/releases/download/v#{version}/XamarinInteractive-#{version}.pkg",
      verified: "github.com/Microsoft/workbooks/"
  name "Xamarin Workbooks"
  desc "C# documentation and coding materials"
  homepage "https://docs.microsoft.com/en-us/xamarin/tools/workbooks/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :el_capitan"

  pkg "XamarinInteractive-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.Inspector"
end
