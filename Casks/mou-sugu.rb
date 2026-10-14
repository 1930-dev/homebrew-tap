cask "mou-sugu" do
  version "1.3.6"
  sha256 "e486e3bf66faed3d34621a70bdda5892bd8ecc3f461d2af61680d436905afcf5"

  url "https://github.com/1930-dev/mousugu/releases/download/v#{version}/MouSugu-#{version}.dmg"
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
