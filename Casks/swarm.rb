cask "swarm" do
  version "1.0"
  sha256 "47c5bb3aabaeb54048228ff8dbba27d18f228382e25cd2a2da4df680b77fac5c"

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
