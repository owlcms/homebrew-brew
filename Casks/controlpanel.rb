cask "controlpanel" do
  version "3.4.0"

  on_arm do
    sha256 "952be7657799ea77d8f59258418ee5168d7a76a8674375656d20f8347e70bca6"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "cb7fcc4c4119bd8b8ac89403a058064b7f42b055e149b403a3fc6821a8569a73"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel"
  desc "Control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
end