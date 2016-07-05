## biogo-llrb
```
BenchmarkInsert-4                      	      10	 112059425 ns/op	 8000102 B/op	  200011 allocs/op
BenchmarkSortedInsert_ReplaceOrInsert-4	      20	  77309403 ns/op	 8000137 B/op	  200015 allocs/op
BenchmarkSortedInsert_InsertNoReplace-4	      20	  63493482 ns/op	 8000114 B/op	  200012 allocs/op
BenchmarkIterate-4                     	     100	  12180202 ns/op	       0 B/op	       0 allocs/op
```
## google-btree
```
BenchmarkInsert-4                      	      20	  83132392 ns/op	 6812212 B/op	  106924 allocs/op
BenchmarkSortedInsert_ReplaceOrInsert-4	      30	  53294651 ns/op	 8437277 B/op	  109911 allocs/op
BenchmarkIterate-4                     	     300	   4356657 ns/op	       0 B/op	       0 allocs/op
```
