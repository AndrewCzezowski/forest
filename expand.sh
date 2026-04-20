#!/usr/bin/env bash
# Generate output/FOO/index.html for each output/FOO/index.xml

set -e
XSL_FILE="output/forest/default.xsl"

for xml in output/forest/*/index.xml; do
  [ -f "$xml" ] || continue
  html="${xml%index.xml}index.html"
  echo "Generating $html ..."
  xsltproc "$XSL_FILE" "$xml" > "$html" &
done
wait

cp output/forest/index/index.html output/forest/index.html

wait
echo "✅ All index.html files generated under output/forest."