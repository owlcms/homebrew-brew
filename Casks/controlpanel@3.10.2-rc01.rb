cask "controlpanel@3.10.2-rc01" do
  version "3.10.2-rc01"

  on_arm do
    sha256 "d2b6eaae20b6a08ea642161cf614dd72e8f8fc4107ef4c201e713fc2cfd826af"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "19762adfc4bb94c865024936bdfbcd5dc1f800d55bbad826b7cc5560a632a8c7"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.10.2-rc01"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end