cask "swarm" do
  version "0.7"
  sha256 "d2f52f5a554b4a902a28397e10718bc444326999edcd9cc71ec9dd5139482825"

  url "https://swarmtorrent.com/downloads/Swarm-#{version}.dmg"
  name "Swarm"
  desc "Native macOS BitTorrent client with live charts, streaming, and proxy privacy"
  homepage "https://swarmtorrent.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  livecheck do
    url "https://swarmtorrent.com/appcast.xml"
    strategy :sparkle
  end

  app "Swarm.app"

  zap trash: [
    "~/Library/Application Support/Swarm",
    "~/Library/Preferences/com.clearchaos.swarm.plist",
    "~/Library/Caches/com.clearchaos.swarm",
    "~/Library/HTTPStorages/com.clearchaos.swarm",
    "~/Library/Containers/com.clearchaos.swarm",
  ]
end
