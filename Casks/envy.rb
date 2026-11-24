cask "envy" do
  version "1.1.0"
  sha256 "12aa9a045a30426c90851fd17361550f40157878efc7748706b21ceadf01d550"

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
