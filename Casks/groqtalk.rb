cask "groqtalk" do
  version "1.10.2"
  sha256 "c6cf80f0a0eacb624ab526caebe594450379171a5360d24117544471adc24417"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.10.2/GroqTalk-1.10.2-macos.dmg"
  name "GroqTalk"
  desc "Menu bar speech-to-text transcription powered by Groq"
  homepage "https://github.com/mean-weasel/groqtalk"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "GroqTalk.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.GroqTalk",
    "~/Library/Preferences/com.neonwatty.GroqTalk.plist",
    "~/Library/Caches/com.neonwatty.GroqTalk",
  ]
end
