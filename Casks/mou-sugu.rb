cask "mou-sugu" do
  version "1.3.5"
  sha256 "769d1032f00b91c7a311384073465709e3201b0706b2890b80c37e500eab1af5"

  url "https://github.com/1930-dev/mousugu/releases/download/v#{version}/MouSugu-#{version}.dmg",
      verified: "github.com/1930-dev/mousugu/"
  name "Mou Sugu"
  desc "Menu bar countdown to your next meeting, with one-click join"
  homepage "https://mousugu.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MouSugu.app"

  zap trash: [
    "~/Library/Application Scripts/dev.1930.MouSugu",
    "~/Library/Containers/dev.1930.MouSugu",
  ]
end
