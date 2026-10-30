cask "mou-sugu" do
  version "1.3.8"
  sha256 "0eb9df724cb15ba6ed5ccef246d93d57b77652403a68fe77a42707ab853f08cf"

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
