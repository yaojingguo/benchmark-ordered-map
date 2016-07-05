## Insert
```
Benchmark_biogo-llrb          	      10	 114244675 ns/op	 8000094 B/op	  200009 allocs/op
Benchmark_google-btree        	      20	  79870534 ns/op	 6812205 B/op	  106923 allocs/op
```
## Iterate
```
Benchmark_biogo-llrb         	     100	  11149827 ns/op	       0 B/op	       0 allocs/op
Benchmark_google-btree       	     500	   3823940 ns/op	       0 B/op	       0 allocs/op
```
## SortedInsert
```
Benchmark_biogo-llrb  	      20	  76805581 ns/op	 8000156 B/op	  200017 allocs/op
Benchmark_biogo-llrb  	      20	  57199932 ns/op	 8000131 B/op	  200014 allocs/op
Benchmark_google-btree	      30	  48993372 ns/op	 8437280 B/op	  109911 allocs/op
```
