cask "controlpanel@3.10.0-alpha01" do
  version "3.10.0-alpha01"

  on_arm do
    sha256 "b3b0eb29d8007a58f131d0062adc6af41f5c1f21611a3ea56f78102c23061ce9"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "e4a743bdef305b5b17a4dceb81f4dd4dd948af219ea7d3a4b0b77c426ee12d1f"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel 3.10.0-alpha01"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end