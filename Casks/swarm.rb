cask "swarm" do
  version "1.0.1"
  sha256 "8e5e5539d756065f0c353a74a0498be23ea8d582f84e8dc7a3bae1648d33fb72"

  url "https://swarmtorrent.com/downloads/Swarm-#{version}.dmg"
  name "Swarm"
  desc "Native BitTorrent client with live charts, streaming, and proxy privacy"
  homepage "https://swarmtorrent.com/"

  livecheck do
    url "https://swarmtorrent.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Swarm.app"

  zap trash: [
    "~/Library/Application Support/Swarm",
    "~/Library/Caches/com.clearchaos.swarm",
    "~/Library/Containers/com.clearchaos.swarm",
    "~/Library/HTTPStorages/com.clearchaos.swarm",
    "~/Library/Preferences/com.clearchaos.swarm.plist",
  ]
end
