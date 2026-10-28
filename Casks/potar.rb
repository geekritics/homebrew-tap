cask "potar" do
  version "2.0.3"
  sha256 "5b40442f53cb161d0b8b490ab2b678a599644d62425c9472b923c963aa93d68d"

  url "https://potar.app/releases/Potar-#{version}.dmg?source=brew"
  name "Potar"
  desc "Per-app audio router: send each app to its own output"
  homepage "https://potar.app/"

  livecheck do
    url "https://potar.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Potar.app"

  uninstall quit: "app.franck.Potar"

  zap trash: [
    "~/Library/Application Scripts/app.franck.Potar",
    "~/Library/Caches/app.franck.Potar",
    "~/Library/Containers/app.franck.Potar",
    "~/Library/HTTPStorages/app.franck.Potar",
    "~/Library/Preferences/app.franck.Potar.plist",
    "~/Library/WebKit/app.franck.Potar",
  ]
end
