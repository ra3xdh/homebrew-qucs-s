cask "qucs-s" do  
    version "25.1.2"
    sha256 "221fc01093cfa0e655d674a22995886d8b738f9dd165aa7e3aa76ab80d53ed6b"
    
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
