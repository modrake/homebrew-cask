cask "epic-games" do
  version "15.3.0"
  sha256 "30ca93dd524f24d6f7aefb70c66e63cb0ca2105b1b4c1a7c78f5d1dd4aff2434"

  url "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Mac/EpicInstaller-#{version}.dmg",
      verified: "epicgames-download1.akamaized.net/"
  name "Epic Games Launcher"
  desc "Launcher for *Epic Games* games"
  homepage "https://www.epicgames.com/"

  livecheck do
    url "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncher.dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Epic Games Launcher.app"

  zap trash: [
    "~/Library/Caches/com.epicgames.EpicGamesLauncher",
    "~/Library/Application Support/Epic",
    "~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies",
    "~/Library/Logs/Unreal Engine/EpicGamesLauncher",
    "~/Library/Preferences/Unreal Engine/EpicGamesLauncher",
  ]
end
