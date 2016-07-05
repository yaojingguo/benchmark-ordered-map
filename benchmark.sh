#!/usr/bin/env bash

top_dir=$(pwd)

reports="reports"


function bench() {
  dir=$1
  cd $dir
  go test -bench . -benchmem
  sed -r -i '/(^PASS|^ok)/d' $map_name
  cd $top_dir
}

rm -fr $reports
mkdir -p $reports
maps=()
for dir in $top_dir/bench/*
do
  map_name=$(basename $dir)
  report_single=$reports/$map_name
  bench $dir >> $report_single 2>/dev/null
  sed -r -i '/(^PASS|^ok)/d' $report_single
  maps+=("$map_name")
done

benchmarks=('Insert' 'Iterate' 'SortedInsert')

report_file=$top_dir/report.md
rm $report_file
for b in ${benchmarks[@]}
do
  printf "## $b\n" >> $report_file
  printf '```\n' >> $report_file
  for m in ${maps[@]}
  do
    grep $b $reports/$m | grep "Benchmark$b" | sed -r -n "s|(Benchmark)(\\S*)|\\1_$m|p" >> $report_file
  done
  printf '```\n' >> $report_file
done

# a hack to make the first column same width
sed -i -r "s|biogo-llrb|biogo-llrb  |" $report_file
sed -i -r "s|               | |" $report_file
