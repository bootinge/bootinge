kernprof -l $1
python -m line_profiler $1.lprof
python -m pstats $1.lprof
