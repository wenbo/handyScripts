https://golang.org/doc/code.html#Workspaces

#Package names 
The first statement in a Go source file must be
package name
where name is the package's default name for imports. (All files in a package must use the same name.)
Go's convention is that the package name is the last element of the import path: the package imported as "crypto/rot13" should be named rot13.
