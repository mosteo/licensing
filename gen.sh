#!/bin/bash

cat <<EOF
package Licensing.Raw with Preelaborate is

   type Licenses is (
EOF

cat choosealicense.com/_licenses/* | 
    grep spdx-id | cut -f2 -d: | xargs -n1 |
    sed 's/-/_/g' | sed 's/\./_/g' | sed 's/$/,/' | sed 's/^/      /'

cat <<EOF
      Public_Domain,
      Unknown
   );

end Licensing.Raw;
EOF
