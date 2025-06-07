# Docs

## Function signatures
 
### write
```c
void write(int fd, char *buf, int len);
```
### read
```c
void read(int fd, char *buf, int len);
```
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
