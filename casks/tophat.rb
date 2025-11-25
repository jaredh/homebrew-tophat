cask "tophat" do
  version "2.3.0"
  sha256 "fa6cc904053bfed5206eea2bb2b6010966aab60e9cb677111e9cc1b80ddc716b"

  url "https://github.com/Shopify/tophat/releases/download/v#{version}/Tophat-#{version}.zip"
  name "Tophat"
  desc "Easily install and test mobile applications with a single click"
  homepage "https://github.com/shopify/tophat"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Tophat.app"

  depends_on macos: ">= :ventura"

  zap trash: "~/Library/Preferences/com.shopify.Tophat.plist"
end
