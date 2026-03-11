#!/usr/bin/env python3
"""Add dartdoc comments before each RemixIcons static const IconData declaration."""
import re

LIB_PATH = "lib/remixicon.dart"

with open(LIB_PATH, "r") as f:
    lines = f.readlines()

out = []
i = 0
while i < len(lines):
    line = lines[i]
    # Match: "  static const IconData icon_name =" (possibly with trailing space/newline)
    m = re.match(r"^(\s+)static const IconData (\w+) =\s*$", line)
    if m:
        indent, name = m.groups()
        # Only add doc if previous line is not already a doc for this icon
        prev = out[-1].strip() if out else ""
        if not prev.startswith("///"):
            out.append(f'{indent}/// The \'{name}\' icon.\n')
    out.append(line)
    i += 1

with open(LIB_PATH, "w") as f:
    f.writelines(out)

print("Added dartdoc comments for icon constants.")
