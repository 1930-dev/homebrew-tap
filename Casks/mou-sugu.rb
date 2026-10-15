cask "mou-sugu" do
  version "1.3.7"
  sha256 "60b5c5610cadee7aad7366f9d57e04081ed9828f3db76ad15d506de0e3a7d2db"

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
