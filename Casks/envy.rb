cask "envy" do
  version "1.0.1"
  sha256 "997f17b15426152c25180fbf99a1645577f34c7f7fb9ceeecd0f1a2e0c767c5c"

  url "https://github.com/joeystdio/envy/releases/download/v#{version}/Envy.dmg"
  name "Envy"
  desc "Environment variables and secrets manager for terminals and coding agents"
  homepage "https://github.com/joeystdio/envy"

  depends_on macos: ">= :sequoia"

  app "Envy.app"

  zap trash: [
    "~/.config/envy",
    "~/Library/Application Support/Envy",
    "~/Library/Preferences/dev.envy.Envy.plist",
  ]
end
