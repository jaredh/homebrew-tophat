cask "tophat" do
  version "2.6.1"
  sha256 "8302f858b62c6b3ed538114ef80efd23ec09f92eddeca75c742334dae83d4f35"

  url "https://github.com/Shopify/tophat/releases/download/v#{version}/Tophat-#{version}.zip"
  name "Tophat"
  desc "Easily install and test mobile applications with a single click"
  homepage "https://github.com/shopify/tophat"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Tophat.app"

  depends_on macos: :ventura

  zap trash: "~/Library/Preferences/com.shopify.Tophat.plist"
end
