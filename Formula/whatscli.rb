class Whatscli < Formula
  desc "Command-line interface for WhatsApp"
  homepage "https://github.com/normen/whatscli"
  url "https://github.com/normen/whatscli/archive/v0.9.5.tar.gz"
  sha256 "013ec75f7464a75ab16dbdf3089304ca328b32608d12e5337d8492135d899d9d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", "whatscli"
    mkdir bin.to_s
    cp "whatscli", "#{bin}/"
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
