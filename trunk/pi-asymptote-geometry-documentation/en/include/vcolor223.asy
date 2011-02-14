    struct triangle {
      restricted point A, B, C;

      struct vertex {
        int n;
        triangle t; }

      restricted vertex VA, VB, VC;

      struct side {
        int n;
        triangle t; }

      side AB, BC, CA, BA, AC, CB; }
