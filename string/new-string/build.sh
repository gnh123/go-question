go tool compile -N -l -S new-string-static.go &>new-string-static.S
go tool compile -N -l -S new-string-dynamic.go &>new-string-dynamic.S
