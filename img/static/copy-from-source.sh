#!/bin/bash

for f in scatter-eval_sec/*.pdf
do
    cp ~/repos/nsa/linear-time/experiments/downward-benchmarks-sat-plot/tmp.plots/multi-scatter-eval_sec/$(basename $f) $f
done

for name in depth_evalsec depth_evalsec2
do
    for f in $name/*.pdf
    do
        cp ~/repos/nsa/linear-time/experiments/downward-benchmarks-sat-plot/tmp.plots/multi-$name-False/$(basename $f) $f
    done
done

for metric in elapsed evaluations rss
do
    for f in hist-$metric/*.pdf
    do
        cp ~/repos/nsa/linear-time/experiments/downward-benchmarks-sat-plot/tmp.plots/linear-hist4-$metric-False/$(basename $f) $f
    done
done

