cask "qucs-s@nightly" do  
    version "25.2.99"
    sha256 :no_check
  
    url "https://github.com/ra3xdh/qucs_s/releases/download/continuous_build/Qucs-S-#{version}-macOS.dmg",
        verified: "github.com/ra3xdh/qucs_s/"
    name "Qucs-S"
    desc "Quite Universal Circuit Simulator with SPICE"
    homepage "https://ra3xdh.github.io/"
  
  
    conflicts_with cask: [
      "qucs-s",
    ]
    depends_on formula: "ngspice"
    depends_on macos: ">= :monterey"
  
    app "qucs-s.app", target: "Qucs-S.app"
  
    zap trash: [
      "$HOME/Library/Application Support/qucs-s",
      "$HOME/Library/Preferences/com.example.qucs-s.plist",
      "$HOME/Library/Saved Application State/com.example.qucs-s.savedState",
    ]
end  
