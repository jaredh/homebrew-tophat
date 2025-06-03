cask "tophat" do
  version "2.1.2"
  sha256 "1d0a70142c767e5b6ae7a6e79ed7d0d604c31159e483fceeb7a3fc9cf515a770"

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
