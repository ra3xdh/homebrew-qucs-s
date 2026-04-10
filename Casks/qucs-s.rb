cask "qucs-s" do  
    version "26.1.0"
    sha256 "6fedcee5e6e837d83f421362ae428523ddf6b3896d7f1dff7d208bd6bf4bd982"
    
    url "https://github.com/ra3xdh/qucs_s/releases/download/#{version}/Qucs-S-#{version}-macOS.dmg",
        verified: "github.com/ra3xdh/qucs_s/"
    name "Qucs-S"
    desc "Quite Universal Circuit Simulator with SPICE"
    homepage "https://ra3xdh.github.io/"
    
    livecheck do
      url "https://github.com/ra3xdh/qucs_s/releases"
      strategy :github_latest
    end
  
    conflicts_with cask: [
      "qucs-s@nightly",
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
