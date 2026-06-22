cask "swarm" do
  version "0.9.1"
  sha256 "820eb70335d74d2b0c3869a95427210d5c8271be25a82277c04d2705cfade1f0"

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
