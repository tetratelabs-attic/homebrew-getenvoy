# Copyright 2019 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.10.0-e95ef6b-8766a89-darwin-release-x86_64.tar.gz"
    version "1.10.0"
    sha256 "d8ad6971d01877be685f5bceac331ac1ed8e7259418c16759c10a378e9e8c718"

    head do
        url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.11.0-dev-47d3a52-8766a89-darwin-release-x86_64.tar.gz"
        sha256 "74a0295ecf8036e12977a454a518105139b3eb076706ca4cdac4f8073f9ac46e"
    end

    stable do
        url "https://tetrate.bintray.com/getenvoy-homebrew-tap/getenvoy-1.10.0-e95ef6b-8766a89-darwin-release-x86_64.tar.gz"
        sha256 "d8ad6971d01877be685f5bceac331ac1ed8e7259418c16759c10a378e9e8c718"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
