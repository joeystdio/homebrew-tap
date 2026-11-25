cask "envy" do
  version "1.2.0"
  sha256 "f76211512e1b90cf3312e87fd609e2247e825a6de54ab2bce70350a906663110"

  url "https://github.com/joeystdio/envy/releases/download/v#{version}/Envy.dmg"
  name "Envy"
  desc "Environment variables and secrets manager for terminals and coding agents"
  homepage "https://github.com/joeystdio/envy"

  depends_on macos: ">= :sequoia"

  app "Envy.app"

  zap trash: [
    "~/.agents/skills/envy",
    "~/.claude/rules/envy.md",
    "~/.config/envy",
    "~/Library/Application Support/Envy",
    "~/Library/Preferences/dev.envy.Envy.plist",
  ]
end
