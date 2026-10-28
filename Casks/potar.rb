cask "potar" do
  version "2.1.0"
  sha256 "70c4f64ef67e523164a9fbdeaf37c0020017432f3a869b0a0b9712657acbaaad"

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
