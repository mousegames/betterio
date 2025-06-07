# Docs

## Key

### fd:
0 stdin
1 stdout
2 error
3+ file
open returns an fd
### buf
buffer for reading or writing
### len
length
### flags in open()
how to open like read only or write only
### mode in open()
the permissions if you create a file in open()
### offset in lseek 
reposition fd offset
### whence in lseek
0 sets the fd to the the offset arg
1 current location of the offset + the offset arg
2 the sizeof the file + the offset arg

## Function signatures

### write
```c
void write(int fd, char *buf, int len);
``` 
### read
```c
void read(int fd, char *buf, int len);
```
Read syscall, put the fd then the string and it's length
### open
```c
int open(char *filename, int flags, unsigned int mode);
```
### close
```c
int close(int fd);
```
### lseek
```c
long lseek(int fd, long offset, int whence);
```

## usage
### write
for writing to a fd
### read
for reading from an fd
### open
open a file
### close
close a file
### lseek
for resetting the fd offset for files

## example
```c
int main()
{
  int file = open("hi.txt", 64 | 2, 0644);
  char *file_contents = "";

  write(file, "Hi\n\0", 4);
  lseek(file, 0, 0);
  read(file, file_contents, 4);

  write(1, file_contents, 4);

  close(file);

  return 0;
}
```
