cask "swarm" do
  version "0.8"
  sha256 "f429fc0fd60c5ffd15a25e28f77f721a1d377af8dbc5a955bbde9e1fd4d66ad9"

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
