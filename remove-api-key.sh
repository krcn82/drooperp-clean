#!/bin/bash
export FILTER_BRANCH_SQUELCH_WARNING=1
git filter-branch --force --tree-filter '
if [ -f "src/firebase/config.ts" ]; then
  sed -i.bak "s/\"AIzaSyCK13tqvwlblQEv03WnIgPymx2_chMOpBw\"/process.env.NEXT_PUBLIC_FIREBASE_API_KEY/g" src/firebase/config.ts
  rm -f src/firebase/config.ts.bak 2>/dev/null
fi
if [ -f "firebase/config.ts" ]; then
  sed -i.bak "s/\"AIzaSyCK13tqvwlblQEv03WnIgPymx2_chMOpBw\"/process.env.NEXT_PUBLIC_FIREBASE_API_KEY/g" firebase/config.ts
  rm -f firebase/config.ts.bak 2>/dev/null
fi
' --prune-empty --tag-name-filter cat -- --all
