class T_rex < Formula
  current_version="0.10.1"

  desc "PostGIS Mapbox Vector Tiles server"
  homepage "https://github.com/manhcuongincusar1/t-rex"
  url "https://github.com/manhcuongincusar1/t-rex/blob/master/t-rex-v0.10.1-x86_64-apple-darwin.tar.gz"
  sha256 "b80a97912e1c084e878dd89e979bfbd2525f8db95efa67b33a0c5b3d34783f29"
  version "#{current_version}"

  def install
    bin.install "t-rex"
  end

  def caveats; <<~EOS
    T-rex requires a database connection string.
    It can be passed as a command-line argument or as a DATABASE_URL environment variable.
      martin postgres://postgres@localhost/db
  EOS
  end

  test do
    `#{bin}/t_rex --version`
  end
end
