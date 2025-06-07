# Docs

## Functions
### write
```c
void write(int fd, char *buf, int len);
```
#### args:
##### fd:
0 stdin  
1 stdout  
2 error  
3+ file  
##### buf
buffer for reading or writing
##### len
length
#### description
Write to a fd
### read
```c
void read(int fd, char *buf, int len);
```
#### args
same as above
#### description
Read from a fd
#### open
```c
int open(char *filename, int flags, unsigned int mode);
```
### open
#### args:
##### flags
how to open
##### mode
if creating a file, what permissions
#### description
opens a file and returns its fd
### close
```c
int close(int fd);
```
#### description
closes a file fd
### lseek
```c
long lseek(int fd, long offset, int whence);
```
#### args:
##### offset
reposition the fd offset
### whence
0 sets the fd to the the offset arg  
1 current location of the offset + the offset arg  
2 the sizeof the file + the offset arg

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
