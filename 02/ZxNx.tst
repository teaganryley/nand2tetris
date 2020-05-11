// tests zx/zy nx/ny functionality for ALU

// prep
load ZxNx.hdl,
compare-to ZxNx.cmp;

set x %B0000000000000001;  // x = 1

// zx on, nx off
set zx 1, set nx 0, eval; 

// zx on, nx on
set zx 1, set nx 1, eval;

// zx off, nx on
set zx 0, set nx 1, eval;

// zx off, nx off
set zx 0, set nx 0, eval;