
class ObsMcu < Formula
  desc "Connect OBS and a Mackie Control Unit (MCU)"
  homepage "https://github.com/normen/obs-mcu"
  url "https://github.com/normen/obs-mcu/archive/v0.2.6.tar.gz"
  sha256 "4ab4e9f840428539750471f8cf267a32def3277faa41a33d8c1fc8e790a1754c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", "obs-mcu"
    mkdir bin.to_s
    cp "obs-mcu", "#{bin}/"
  end

  test do
    #system "#{bin}/whatscli"
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whatscli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
