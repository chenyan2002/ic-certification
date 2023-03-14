let upstream =
      https://github.com/dfinity/vessel-package-set/releases/download/mo-0.8.4-20230311/package-set.dhall sha256:bf5cec8ba99cfa6abcdb793a4aeaea9f4c913a4bd97af0a556bd6e81aaf75cd4


let additions = [
   { name = "sha256"
   , repo = "https://github.com/nomeata/motoko-sha.git"
   , version = "90cbfc3b6c131767027fdd910393a5766208142c"
   , dependencies = ["base"]
   },
   { name = "merkle-tree"
   -- TODO: How to refer to a local directory?
   , repo = "file:///home/jojo/dfinity/motoko-merkle-tree"
   , version = "58a8dbb72ec27b73e54cb54f253b84854221975f"
   , dependencies = ["base", "sha256"]
   }
]
in upstream # additions

